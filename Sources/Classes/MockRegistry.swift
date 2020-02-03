import Foundation

public protocol MethodTypeProtocol {
    static func compareParameters(lhs: Self, rhs: Self, matcher: Matcher) -> Bool
    func intValue() -> Int
}

public protocol MethodTypeWrapper {
    associatedtype MethodType
    var method: MethodType { get }
}

public protocol GivenProtocol: StubbedMethod, MethodTypeWrapper { }

public protocol VerifyProtocol: MethodTypeWrapper { }

public protocol PerformProtocol: MethodTypeWrapper {
    var performs: Any { get }
}

public final class MockRegistry
    <
    MethodType: MethodTypeProtocol,
    Given: GivenProtocol,
    Verify: VerifyProtocol,
    Perform: PerformProtocol
    >
    where
    Given.MethodType == MethodType,
    Verify.MethodType == MethodType,
    Perform.MethodType == MethodType {
    
    public init(file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.file = file
        self.line = line
    }
    
    public var matcher: Matcher = Matcher.default
    public var stubbingPolicy: StubbingPolicy = .wrap
    public var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst
    
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public func resetMock(_ scopes: [MockScope]) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }
    
    public func setupMock(file: StaticString, line: UInt) {
        self.file = file
        self.line = line
    }
    
    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }
    
    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }
    
    public func verify(_ method: Verify, count: Count, file: StaticString, line: UInt) {
        let invocations = matchingCalls(method.method)
        MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
    }
    
    public func addInvocation(_ call: MethodType) {
        invocations.append(call)
    }
    
    public func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    
    public func methodPerformValue(_ method: MethodType) -> Any? {
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) }
        return matched?.performs
    }
    
    private func matchingCalls(_ method: MethodType) -> [MethodType] {
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher) }
    }
    
    private func matchingCalls(_ method: Verify) -> Int {
        return matchingCalls(method.method).count
    }
    
    public func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    
    public func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    
    public func onFatalFailure(_ message: String) {
        #if Mocky
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleMissingStubError(message: message, file: file, line: line)
        #endif
    }
    
    public func invoke<T>(_ method: MethodType, of type: T.Type, named: String, onPerform: (Any) -> Void) -> T {
        spy(method, onPerform)
        
        var __value: T
        
        do {
            __value = try methodReturnValue(method).casted()
        } catch {
            let message = "Stub return value not specified for \(named). Use given"
            onFatalFailure(message)
            Failure(message)
        }
        return __value
    }
    
    public func invoke<T>(_ method: MethodType, of type: T.Type, named: String, onPerform: (Any) -> Void) -> T? {
        spy(method, onPerform)
        
        var __value: T? = nil
        do {
            __value = try methodReturnValue(method).casted()
        } catch {
            // do nothing
        }
        return __value
    }
    
    public func invoke(_ method: MethodType, named: String, onPerform: (Any) -> Void) -> Void {
        spy(method, onPerform)
    }
    
    public func invokeThrowing<T>(_ method: MethodType, of type: T.Type, named: String, onPerform: (Any) -> Void) throws -> T {
        spy(method, onPerform)
        
        var __value: T
        
        do {
            __value = try methodReturnValue(method).casted()
        } catch MockError.notStubed {
            let message = "Stub return value not specified for \(named). Use given"
            onFatalFailure(message)
            Failure(message)
        } catch {
            throw error
        }
        return __value
    }
    
    public func invokeThrowing<T>(_ method: MethodType, named: String, onPerform: (Any) -> Void) throws -> T? {
        spy(method, onPerform)
        
        var __value: T? = nil
        do {
            __value = try methodReturnValue(method).casted()
        } catch MockError.notStubed {
            return __value
        } catch {
            throw error
        }
        return __value
    }
    
    public func invokeThrowing(_ method: MethodType, named: String, onPerform: (Any) -> Void) throws -> Void {
        spy(method, onPerform)
        
        do {
            let _: Void = try methodReturnValue(method).casted()
        } catch MockError.notStubed {
            // Do nothing
        } catch {
            throw error
        }
    }
    
    private func spy(_ method: MethodType, _ onPerform: (Any) -> Void) {
        addInvocation(method)
        if let perform = methodPerformValue(method) { onPerform(perform) }
    }
}

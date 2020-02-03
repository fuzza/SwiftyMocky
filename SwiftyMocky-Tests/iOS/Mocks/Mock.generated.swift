// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// Generated with SwiftyMocky 3.5.0

import SwiftyMocky
#if !MockyCustom
import XCTest
#endif
@testable import Mocky_Example_iOS

// MARK: - AMassiveTestProtocol
open class AMassiveTestProtocolMock: AMassiveTestProtocol, Mock, StaticMock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    static var registry = MockRegistry<StaticMethodType, StaticGiven, StaticVerify, StaticPerform>()
    
    static var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    static var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    static var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    public typealias StaticPropertyStub = StaticGiven
    public typealias StaticMethodStub = StaticGiven
    
    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public static func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var nonOptionalClosure: () -> Void {
		get {	registry.addInvocation(.p_nonOptionalClosure_get); return __p_nonOptionalClosure ?? registry.givenGetterValue(.p_nonOptionalClosure_get, "AMassiveTestProtocolMock - stub value for nonOptionalClosure was not defined") }
		set {	registry.addInvocation(.p_nonOptionalClosure_set(.value(newValue))); __p_nonOptionalClosure = newValue }
	}
	private var __p_nonOptionalClosure: (() -> Void)?

    public var optionalClosure: (() -> Int)? {
		get {	registry.addInvocation(.p_optionalClosure_get); return __p_optionalClosure ?? registry.optionalGivenGetterValue(.p_optionalClosure_get, "AMassiveTestProtocolMock - stub value for optionalClosure was not defined") }
		set {	registry.addInvocation(.p_optionalClosure_set(.value(newValue))); __p_optionalClosure = newValue }
	}
	private var __p_optionalClosure: (() -> Int)?

    public var implicitelyUnwrappedClosure: (() -> Void)! {
		get {	registry.addInvocation(.p_implicitelyUnwrappedClosure_get); return __p_implicitelyUnwrappedClosure ?? registry.optionalGivenGetterValue(.p_implicitelyUnwrappedClosure_get, "AMassiveTestProtocolMock - stub value for implicitelyUnwrappedClosure was not defined") }
		set {	registry.addInvocation(.p_implicitelyUnwrappedClosure_set(.value(newValue))); __p_implicitelyUnwrappedClosure = newValue }
	}
	private var __p_implicitelyUnwrappedClosure: (() -> Void)?


    public static var optionalClosure: (() -> Int)? {
		get {	AMassiveTestProtocolMock.registry.addInvocation(.p_optionalClosure_get); return AMassiveTestProtocolMock.__p_optionalClosure ?? registry.optionalGivenGetterValue(.p_optionalClosure_get, "AMassiveTestProtocolMock - stub value for optionalClosure was not defined") }
		set {	AMassiveTestProtocolMock.registry.addInvocation(.p_optionalClosure_set(.value(newValue))); AMassiveTestProtocolMock.__p_optionalClosure = newValue }
	}
	private static var __p_optionalClosure: (() -> Int)?




    public static func methodThatThrows() throws {
        let method = StaticMethodType.sm_methodThatThrows
		let stringName = "methodThatThrows()"
		return try registry.invokeThrowing(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    public static func methodThatReturnsAndThrows(param: String) throws -> Int {
        let method = StaticMethodType.sm_methodThatReturnsAndThrows__param_param(Parameter<String>.value(`param`))
		let stringName = "methodThatReturnsAndThrows(param: String)"
		return try registry.invokeThrowing(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`param`)
		}
    }

    public static func methodThatRethrows(param: (String) throws -> Int) rethrows -> Int {
        let method = StaticMethodType.sm_methodThatRethrows__param_param(Parameter<(String) throws -> Int>.any)
		let stringName = "methodThatRethrows(param: (String) throws -> Int)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? ((String) throws -> Int) -> Void)?(`param`)
		}
    }

    public required init() { }

    public required init(_ sth: Int) { }

    open func methodThatThrows() throws {
        let method = MethodType.m_methodThatThrows
		let stringName = "methodThatThrows()"
		return try registry.invokeThrowing(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func methodThatReturnsAndThrows(param: String) throws -> Int {
        let method = MethodType.m_methodThatReturnsAndThrows__param_param(Parameter<String>.value(`param`))
		let stringName = "methodThatReturnsAndThrows(param: String)"
		return try registry.invokeThrowing(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`param`)
		}
    }

    open func methodThatRethrows(param: (String) throws -> Int) rethrows -> Int {
        let method = MethodType.m_methodThatRethrows__param_param(Parameter<(String) throws -> Int>.any)
		let stringName = "methodThatRethrows(param: (String) throws -> Int)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? ((String) throws -> Int) -> Void)?(`param`)
		}
    }

    public enum StaticMethodType: MethodTypeProtocol {
        case sm_methodThatThrows
        case sm_methodThatReturnsAndThrows__param_param(Parameter<String>)
        case sm_methodThatRethrows__param_param(Parameter<(String) throws -> Int>)
        case p_optionalClosure_get
		case p_optionalClosure_set(Parameter<(() -> Int)?>)

        public static func compareParameters(lhs: StaticMethodType, rhs: StaticMethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.sm_methodThatThrows, .sm_methodThatThrows):
                return true 
            case (.sm_methodThatReturnsAndThrows__param_param(let lhsParam), .sm_methodThatReturnsAndThrows__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.sm_methodThatRethrows__param_param(let lhsParam), .sm_methodThatRethrows__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.p_optionalClosure_get,.p_optionalClosure_get): return true
			case (.p_optionalClosure_set(let left),.p_optionalClosure_set(let right)): return Parameter<(() -> Int)?>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
                case .sm_methodThatThrows: return 0
                case let .sm_methodThatReturnsAndThrows__param_param(p0): return p0.intValue
                case let .sm_methodThatRethrows__param_param(p0): return p0.intValue
                case .p_optionalClosure_get: return 0
			case .p_optionalClosure_set(let newValue): return newValue.intValue
            }
        }
    }

    open class StaticGiven: StubbedMethod, GivenProtocol {
        public var method: StaticMethodType

        private init(method: StaticMethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func optionalClosure(getter defaultValue: (() -> Int)?...) -> StaticPropertyStub {
            return StaticGiven(method: .p_optionalClosure_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func methodThatReturnsAndThrows(param: Parameter<String>, willReturn: Int...) -> StaticMethodStub {
            return StaticGiven(method: .sm_methodThatReturnsAndThrows__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, willReturn: Int...) -> StaticMethodStub {
            return StaticGiven(method: .sm_methodThatRethrows__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodThatThrows(willThrow: Error...) -> StaticMethodStub {
            return StaticGiven(method: .sm_methodThatThrows, products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatThrows(willProduce: (StubberThrows<Void>) -> Void) -> StaticMethodStub {
            let willThrow: [Error] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_methodThatThrows, products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
        public static func methodThatReturnsAndThrows(param: Parameter<String>, willThrow: Error...) -> StaticMethodStub {
            return StaticGiven(method: .sm_methodThatReturnsAndThrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatReturnsAndThrows(param: Parameter<String>, willProduce: (StubberThrows<Int>) -> Void) -> StaticMethodStub {
            let willThrow: [Error] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_methodThatReturnsAndThrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, willThrow: Error...) -> StaticMethodStub {
            return StaticGiven(method: .sm_methodThatRethrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, willProduce: (StubberThrows<Int>) -> Void) -> StaticMethodStub {
            let willThrow: [Error] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_methodThatRethrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct StaticVerify: VerifyProtocol {
        public var method: StaticMethodType

        public static func methodThatThrows() -> StaticVerify { return StaticVerify(method: .sm_methodThatThrows)}
        public static func methodThatReturnsAndThrows(param: Parameter<String>) -> StaticVerify { return StaticVerify(method: .sm_methodThatReturnsAndThrows__param_param(`param`))}
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>) -> StaticVerify { return StaticVerify(method: .sm_methodThatRethrows__param_param(`param`))}
        public static var optionalClosure: StaticVerify { return StaticVerify(method: .p_optionalClosure_get) }
		public static func optionalClosure(set newValue: Parameter<(() -> Int)?>) -> StaticVerify { return StaticVerify(method: .p_optionalClosure_set(newValue)) }
    }

    public struct StaticPerform: PerformProtocol {
        public var method: StaticMethodType
        public var performs: Any

        public static func methodThatThrows(perform: @escaping () -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_methodThatThrows, performs: perform)
        }
        public static func methodThatReturnsAndThrows(param: Parameter<String>, perform: @escaping (String) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_methodThatReturnsAndThrows__param_param(`param`), performs: perform)
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, perform: @escaping ((String) throws -> Int) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_methodThatRethrows__param_param(`param`), performs: perform)
        }
    }

    
    public enum MethodType: MethodTypeProtocol {
        case m_methodThatThrows
        case m_methodThatReturnsAndThrows__param_param(Parameter<String>)
        case m_methodThatRethrows__param_param(Parameter<(String) throws -> Int>)
        case p_nonOptionalClosure_get
		case p_nonOptionalClosure_set(Parameter<() -> Void>)
        case p_optionalClosure_get
		case p_optionalClosure_set(Parameter<(() -> Int)?>)
        case p_implicitelyUnwrappedClosure_get
		case p_implicitelyUnwrappedClosure_set(Parameter<(() -> Void)?>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodThatThrows, .m_methodThatThrows):
                return true 
            case (.m_methodThatReturnsAndThrows__param_param(let lhsParam), .m_methodThatReturnsAndThrows__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.m_methodThatRethrows__param_param(let lhsParam), .m_methodThatRethrows__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.p_nonOptionalClosure_get,.p_nonOptionalClosure_get): return true
			case (.p_nonOptionalClosure_set(let left),.p_nonOptionalClosure_set(let right)): return Parameter<() -> Void>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_optionalClosure_get,.p_optionalClosure_get): return true
			case (.p_optionalClosure_set(let left),.p_optionalClosure_set(let right)): return Parameter<(() -> Int)?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_implicitelyUnwrappedClosure_get,.p_implicitelyUnwrappedClosure_get): return true
			case (.p_implicitelyUnwrappedClosure_set(let left),.p_implicitelyUnwrappedClosure_set(let right)): return Parameter<(() -> Void)?>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_methodThatThrows: return 0
            case let .m_methodThatReturnsAndThrows__param_param(p0): return p0.intValue
            case let .m_methodThatRethrows__param_param(p0): return p0.intValue
            case .p_nonOptionalClosure_get: return 0
			case .p_nonOptionalClosure_set(let newValue): return newValue.intValue
            case .p_optionalClosure_get: return 0
			case .p_optionalClosure_set(let newValue): return newValue.intValue
            case .p_implicitelyUnwrappedClosure_get: return 0
			case .p_implicitelyUnwrappedClosure_set(let newValue): return newValue.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func nonOptionalClosure(getter defaultValue: () -> Void...) -> PropertyStub {
            return Given(method: .p_nonOptionalClosure_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func optionalClosure(getter defaultValue: (() -> Int)?...) -> PropertyStub {
            return Given(method: .p_optionalClosure_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func implicitelyUnwrappedClosure(getter defaultValue: (() -> Void)?...) -> PropertyStub {
            return Given(method: .p_implicitelyUnwrappedClosure_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func methodThatReturnsAndThrows(param: Parameter<String>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodThatReturnsAndThrows__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodThatRethrows__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodThatThrows(willThrow: Error...) -> MethodStub {
            return Given(method: .m_methodThatThrows, products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatThrows(willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_methodThatThrows, products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
        public static func methodThatReturnsAndThrows(param: Parameter<String>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_methodThatReturnsAndThrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatReturnsAndThrows(param: Parameter<String>, willProduce: (StubberThrows<Int>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_methodThatReturnsAndThrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_methodThatRethrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, willProduce: (StubberThrows<Int>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_methodThatRethrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodThatThrows() -> Verify { return Verify(method: .m_methodThatThrows)}
        public static func methodThatReturnsAndThrows(param: Parameter<String>) -> Verify { return Verify(method: .m_methodThatReturnsAndThrows__param_param(`param`))}
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>) -> Verify { return Verify(method: .m_methodThatRethrows__param_param(`param`))}
        public static var nonOptionalClosure: Verify { return Verify(method: .p_nonOptionalClosure_get) }
		public static func nonOptionalClosure(set newValue: Parameter<() -> Void>) -> Verify { return Verify(method: .p_nonOptionalClosure_set(newValue)) }
        public static var optionalClosure: Verify { return Verify(method: .p_optionalClosure_get) }
		public static func optionalClosure(set newValue: Parameter<(() -> Int)?>) -> Verify { return Verify(method: .p_optionalClosure_set(newValue)) }
        public static var implicitelyUnwrappedClosure: Verify { return Verify(method: .p_implicitelyUnwrappedClosure_get) }
		public static func implicitelyUnwrappedClosure(set newValue: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .p_implicitelyUnwrappedClosure_set(newValue)) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodThatThrows(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_methodThatThrows, performs: perform)
        }
        public static func methodThatReturnsAndThrows(param: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_methodThatReturnsAndThrows__param_param(`param`), performs: perform)
        }
        public static func methodThatRethrows(param: Parameter<(String) throws -> Int>, perform: @escaping ((String) throws -> Int) -> Void) -> Perform {
            return Perform(method: .m_methodThatRethrows__param_param(`param`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }

    static public func given(_ method: StaticGiven) {
        registry.given(method)
    }

    static public func perform(_ method: StaticPerform) {
        registry.perform(method)
    }

    static public func verify(_ method: StaticVerify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - AVeryAssociatedProtocol
open class AVeryAssociatedProtocolMock<T1,T2>: AVeryAssociatedProtocol, Mock where T1: Sequence, T2: Comparable, T2: EmptyProtocol {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func fetch(for value: T2) -> T1 {
        let method = MethodType.m_fetch__for_value(Parameter<T2>.value(`value`))
		let stringName = "fetch(for value: T2)"
		return registry.invoke(method, of: (T1).self, named: stringName) {
			($0 as? (T2) -> Void)?(`value`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_fetch__for_value(Parameter<T2>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_fetch__for_value(let lhsValue), .m_fetch__for_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_fetch__for_value(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func fetch(for value: Parameter<T2>, willReturn: T1...) -> MethodStub {
            return Given(method: .m_fetch__for_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func fetch(for value: Parameter<T2>, willProduce: (Stubber<T1>) -> Void) -> MethodStub {
            let willReturn: [T1] = []
			let given: Given = { return Given(method: .m_fetch__for_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (T1).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func fetch(for value: Parameter<T2>) -> Verify { return Verify(method: .m_fetch__for_value(`value`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func fetch(for value: Parameter<T2>, perform: @escaping (T2) -> Void) -> Perform {
            return Perform(method: .m_fetch__for_value(`value`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - AVeryGenericProtocol
open class AVeryGenericProtocolMock: AVeryGenericProtocol, Mock, StaticMock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    static var registry = MockRegistry<StaticMethodType, StaticGiven, StaticVerify, StaticPerform>()
    
    static var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    static var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    static var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    public typealias StaticPropertyStub = StaticGiven
    public typealias StaticMethodStub = StaticGiven
    
    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public static func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    public static func generic<Q>(lhs: Q, rhs: Q) -> Bool where Q: Equatable {
        let method = StaticMethodType.sm_generic__lhs_lhsrhs_rhs(Parameter<Q>.value(`lhs`).wrapAsGeneric(), Parameter<Q>.value(`rhs`).wrapAsGeneric())
		let stringName = "generic<Q>(lhs: Q, rhs: Q)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Q, Q) -> Void)?(`lhs`, `rhs`)
		}
    }

    public static func veryConstrained<Q: Sequence>(lhs: Q, rhs: Q) -> Bool where Q: Equatable {
        let method = StaticMethodType.sm_veryConstrained__lhs_lhsrhs_rhs(Parameter<Q>.value(`lhs`).wrapAsGeneric(), Parameter<Q>.value(`rhs`).wrapAsGeneric())
		let stringName = "veryConstrained<Q: Sequence>(lhs: Q, rhs: Q)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Q, Q) -> Void)?(`lhs`, `rhs`)
		}
    }

    public required init<V>(value: V) { }

    open func methodConstrained<A,B,C>(param: A) -> (B,C) {
        let method = MethodType.m_methodConstrained__param_param(Parameter<A>.value(`param`).wrapAsGeneric())
		let stringName = "methodConstrained<A,B,C>(param: A)"
		return registry.invoke(method, of: ((B,C)).self, named: stringName) {
			($0 as? (A) -> Void)?(`param`)
		}
    }

    public enum StaticMethodType: MethodTypeProtocol {
        case sm_generic__lhs_lhsrhs_rhs(Parameter<GenericAttribute>, Parameter<GenericAttribute>)
        case sm_veryConstrained__lhs_lhsrhs_rhs(Parameter<GenericAttribute>, Parameter<GenericAttribute>)

        public static func compareParameters(lhs: StaticMethodType, rhs: StaticMethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.sm_generic__lhs_lhsrhs_rhs(let lhsLhs, let lhsRhs), .sm_generic__lhs_lhsrhs_rhs(let rhsLhs, let rhsRhs)):
                guard Parameter.compare(lhs: lhsLhs, rhs: rhsLhs, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsRhs, rhs: rhsRhs, with: matcher) else { return false } 
                return true 
            case (.sm_veryConstrained__lhs_lhsrhs_rhs(let lhsLhs, let lhsRhs), .sm_veryConstrained__lhs_lhsrhs_rhs(let rhsLhs, let rhsRhs)):
                guard Parameter.compare(lhs: lhsLhs, rhs: rhsLhs, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsRhs, rhs: rhsRhs, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
                case let .sm_generic__lhs_lhsrhs_rhs(p0, p1): return p0.intValue + p1.intValue
                case let .sm_veryConstrained__lhs_lhsrhs_rhs(p0, p1): return p0.intValue + p1.intValue
            }
        }
    }

    open class StaticGiven: StubbedMethod, GivenProtocol {
        public var method: StaticMethodType

        private init(method: StaticMethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func generic<Q>(lhs: Parameter<Q>, rhs: Parameter<Q>, willReturn: Bool...) -> StaticMethodStub where Q: Equatable {
            return StaticGiven(method: .sm_generic__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func veryConstrained<Q: Sequence>(lhs: Parameter<Q>, rhs: Parameter<Q>, willReturn: Bool...) -> StaticMethodStub where Q: Equatable {
            return StaticGiven(method: .sm_veryConstrained__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func generic<Q>(lhs: Parameter<Q>, rhs: Parameter<Q>, willProduce: (Stubber<Bool>) -> Void) -> StaticMethodStub where Q: Equatable {
            let willReturn: [Bool] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_generic__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func veryConstrained<Q: Sequence>(lhs: Parameter<Q>, rhs: Parameter<Q>, willProduce: (Stubber<Bool>) -> Void) -> StaticMethodStub where Q: Equatable {
            let willReturn: [Bool] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_veryConstrained__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct StaticVerify: VerifyProtocol {
        public var method: StaticMethodType

        public static func generic<Q>(lhs: Parameter<Q>, rhs: Parameter<Q>) -> StaticVerify { return StaticVerify(method: .sm_generic__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()))}
        public static func veryConstrained<Q>(lhs: Parameter<Q>, rhs: Parameter<Q>) -> StaticVerify where Q:Sequence { return StaticVerify(method: .sm_veryConstrained__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()))}
    }

    public struct StaticPerform: PerformProtocol {
        public var method: StaticMethodType
        public var performs: Any

        public static func generic<Q>(lhs: Parameter<Q>, rhs: Parameter<Q>, perform: @escaping (Q, Q) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_generic__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), performs: perform)
        }
        public static func veryConstrained<Q>(lhs: Parameter<Q>, rhs: Parameter<Q>, perform: @escaping (Q, Q) -> Void) -> StaticPerform where Q:Sequence {
            return StaticPerform(method: .sm_veryConstrained__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), performs: perform)
        }
    }

    
    public enum MethodType: MethodTypeProtocol {
        case m_methodConstrained__param_param(Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodConstrained__param_param(let lhsParam), .m_methodConstrained__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodConstrained__param_param(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodConstrained<A,B,C>(param: Parameter<A>, willReturn: (B,C)...) -> MethodStub {
            return Given(method: .m_methodConstrained__param_param(`param`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodConstrained<A,B,C>(param: Parameter<A>, willProduce: (Stubber<(B,C)>) -> Void) -> MethodStub {
            let willReturn: [(B,C)] = []
			let given: Given = { return Given(method: .m_methodConstrained__param_param(`param`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ((B,C)).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodConstrained<A>(param: Parameter<A>) -> Verify { return Verify(method: .m_methodConstrained__param_param(`param`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodConstrained<A>(param: Parameter<A>, perform: @escaping (A) -> Void) -> Perform {
            return Perform(method: .m_methodConstrained__param_param(`param`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }

    static public func given(_ method: StaticGiven) {
        registry.given(method)
    }

    static public func perform(_ method: StaticPerform) {
        registry.perform(method)
    }

    static public func verify(_ method: StaticVerify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - AllLiteralsContainer
open class AllLiteralsContainerMock: AllLiteralsContainer, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func methodWithStringParameter(p: String) -> Int {
        let method = MethodType.m_methodWithStringParameter__p_p(Parameter<String>.value(`p`))
		let stringName = "methodWithStringParameter(p: String)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`p`)
		}
    }

    open func methodWithOtionalStringParameter(p: String?) -> Int {
        let method = MethodType.m_methodWithOtionalStringParameter__p_p(Parameter<String?>.value(`p`))
		let stringName = "methodWithOtionalStringParameter(p: String?)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (String?) -> Void)?(`p`)
		}
    }

    open func methodWithCustomStringParameter(p: CustomString) -> Int {
        let method = MethodType.m_methodWithCustomStringParameter__p_p(Parameter<CustomString>.value(`p`))
		let stringName = "methodWithCustomStringParameter(p: CustomString)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (CustomString) -> Void)?(`p`)
		}
    }

    open func methodWithCustomOptionalStringParameter(p: CustomString?) -> Int {
        let method = MethodType.m_methodWithCustomOptionalStringParameter__p_p(Parameter<CustomString?>.value(`p`))
		let stringName = "methodWithCustomOptionalStringParameter(p: CustomString?)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (CustomString?) -> Void)?(`p`)
		}
    }

    open func methodWithIntParameter(p: Int) -> Int {
        let method = MethodType.m_methodWithIntParameter__p_p(Parameter<Int>.value(`p`))
		let stringName = "methodWithIntParameter(p: Int)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (Int) -> Void)?(`p`)
		}
    }

    open func methodWithCustomOptionalIntParameter(p: CustomInt?) -> Int {
        let method = MethodType.m_methodWithCustomOptionalIntParameter__p_p(Parameter<CustomInt?>.value(`p`))
		let stringName = "methodWithCustomOptionalIntParameter(p: CustomInt?)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (CustomInt?) -> Void)?(`p`)
		}
    }

    open func methodWithBool(p: Bool?) -> Int {
        let method = MethodType.m_methodWithBool__p_p(Parameter<Bool?>.value(`p`))
		let stringName = "methodWithBool(p: Bool?)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (Bool?) -> Void)?(`p`)
		}
    }

    open func methodWithFloat(p: Float?) -> Int {
        let method = MethodType.m_methodWithFloat__p_p(Parameter<Float?>.value(`p`))
		let stringName = "methodWithFloat(p: Float?)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (Float?) -> Void)?(`p`)
		}
    }

    open func methodWithDouble(p: Double?) -> Int {
        let method = MethodType.m_methodWithDouble__p_p(Parameter<Double?>.value(`p`))
		let stringName = "methodWithDouble(p: Double?)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (Double?) -> Void)?(`p`)
		}
    }

    open func methodWithArrayOfInt(p: [Int]) -> Int {
        let method = MethodType.m_methodWithArrayOfInt__p_p(Parameter<[Int]>.value(`p`))
		let stringName = "methodWithArrayOfInt(p: [Int])"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? ([Int]) -> Void)?(`p`)
		}
    }

    open func methodWithArrayOfOther(p: [SomeClass]) -> Int {
        let method = MethodType.m_methodWithArrayOfOther__p_p(Parameter<[SomeClass]>.value(`p`))
		let stringName = "methodWithArrayOfOther(p: [SomeClass])"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? ([SomeClass]) -> Void)?(`p`)
		}
    }

    open func methodWithSetOfInt(p: Set<Int>) -> Int {
        let method = MethodType.m_methodWithSetOfInt__p_p(Parameter<Set<Int>>.value(`p`))
		let stringName = "methodWithSetOfInt(p: Set<Int>)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (Set<Int>) -> Void)?(`p`)
		}
    }

    open func methodWithOptionalSetOfInt(p: Set<Int>?) -> Int {
        let method = MethodType.m_methodWithOptionalSetOfInt__p_p(Parameter<Set<Int>?>.value(`p`))
		let stringName = "methodWithOptionalSetOfInt(p: Set<Int>?)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (Set<Int>?) -> Void)?(`p`)
		}
    }

    open func methodWithDict(p: [String: SomeClass]) -> Int {
        let method = MethodType.m_methodWithDict__p_p(Parameter<[String: SomeClass]>.value(`p`))
		let stringName = "methodWithDict(p: [String: SomeClass])"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? ([String: SomeClass]) -> Void)?(`p`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodWithStringParameter__p_p(Parameter<String>)
        case m_methodWithOtionalStringParameter__p_p(Parameter<String?>)
        case m_methodWithCustomStringParameter__p_p(Parameter<CustomString>)
        case m_methodWithCustomOptionalStringParameter__p_p(Parameter<CustomString?>)
        case m_methodWithIntParameter__p_p(Parameter<Int>)
        case m_methodWithCustomOptionalIntParameter__p_p(Parameter<CustomInt?>)
        case m_methodWithBool__p_p(Parameter<Bool?>)
        case m_methodWithFloat__p_p(Parameter<Float?>)
        case m_methodWithDouble__p_p(Parameter<Double?>)
        case m_methodWithArrayOfInt__p_p(Parameter<[Int]>)
        case m_methodWithArrayOfOther__p_p(Parameter<[SomeClass]>)
        case m_methodWithSetOfInt__p_p(Parameter<Set<Int>>)
        case m_methodWithOptionalSetOfInt__p_p(Parameter<Set<Int>?>)
        case m_methodWithDict__p_p(Parameter<[String: SomeClass]>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodWithStringParameter__p_p(let lhsP), .m_methodWithStringParameter__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithOtionalStringParameter__p_p(let lhsP), .m_methodWithOtionalStringParameter__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithCustomStringParameter__p_p(let lhsP), .m_methodWithCustomStringParameter__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithCustomOptionalStringParameter__p_p(let lhsP), .m_methodWithCustomOptionalStringParameter__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithIntParameter__p_p(let lhsP), .m_methodWithIntParameter__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithCustomOptionalIntParameter__p_p(let lhsP), .m_methodWithCustomOptionalIntParameter__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithBool__p_p(let lhsP), .m_methodWithBool__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithFloat__p_p(let lhsP), .m_methodWithFloat__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithDouble__p_p(let lhsP), .m_methodWithDouble__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithArrayOfInt__p_p(let lhsP), .m_methodWithArrayOfInt__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithArrayOfOther__p_p(let lhsP), .m_methodWithArrayOfOther__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithSetOfInt__p_p(let lhsP), .m_methodWithSetOfInt__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithOptionalSetOfInt__p_p(let lhsP), .m_methodWithOptionalSetOfInt__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            case (.m_methodWithDict__p_p(let lhsP), .m_methodWithDict__p_p(let rhsP)):
                guard Parameter.compare(lhs: lhsP, rhs: rhsP, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodWithStringParameter__p_p(p0): return p0.intValue
            case let .m_methodWithOtionalStringParameter__p_p(p0): return p0.intValue
            case let .m_methodWithCustomStringParameter__p_p(p0): return p0.intValue
            case let .m_methodWithCustomOptionalStringParameter__p_p(p0): return p0.intValue
            case let .m_methodWithIntParameter__p_p(p0): return p0.intValue
            case let .m_methodWithCustomOptionalIntParameter__p_p(p0): return p0.intValue
            case let .m_methodWithBool__p_p(p0): return p0.intValue
            case let .m_methodWithFloat__p_p(p0): return p0.intValue
            case let .m_methodWithDouble__p_p(p0): return p0.intValue
            case let .m_methodWithArrayOfInt__p_p(p0): return p0.intValue
            case let .m_methodWithArrayOfOther__p_p(p0): return p0.intValue
            case let .m_methodWithSetOfInt__p_p(p0): return p0.intValue
            case let .m_methodWithOptionalSetOfInt__p_p(p0): return p0.intValue
            case let .m_methodWithDict__p_p(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodWithStringParameter(p: Parameter<String>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithOtionalStringParameter(p: Parameter<String?>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithOtionalStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithCustomStringParameter(p: Parameter<CustomString>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithCustomStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithCustomOptionalStringParameter(p: Parameter<CustomString?>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithCustomOptionalStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithIntParameter(p: Parameter<Int>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithIntParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithCustomOptionalIntParameter(p: Parameter<CustomInt?>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithCustomOptionalIntParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithBool(p: Parameter<Bool?>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithBool__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithFloat(p: Parameter<Float?>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithFloat__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithDouble(p: Parameter<Double?>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithDouble__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithArrayOfInt(p: Parameter<[Int]>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithArrayOfInt__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithArrayOfOther(p: Parameter<[SomeClass]>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithArrayOfOther__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithSetOfInt(p: Parameter<Set<Int>>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithSetOfInt__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithOptionalSetOfInt(p: Parameter<Set<Int>?>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithOptionalSetOfInt__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithDict(p: Parameter<[String: SomeClass]>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodWithDict__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithStringParameter(p: Parameter<String>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithOtionalStringParameter(p: Parameter<String?>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithOtionalStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithCustomStringParameter(p: Parameter<CustomString>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithCustomStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithCustomOptionalStringParameter(p: Parameter<CustomString?>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithCustomOptionalStringParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithIntParameter(p: Parameter<Int>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithIntParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithCustomOptionalIntParameter(p: Parameter<CustomInt?>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithCustomOptionalIntParameter__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithBool(p: Parameter<Bool?>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithBool__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithFloat(p: Parameter<Float?>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithFloat__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithDouble(p: Parameter<Double?>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithDouble__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithArrayOfInt(p: Parameter<[Int]>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithArrayOfInt__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithArrayOfOther(p: Parameter<[SomeClass]>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithArrayOfOther__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithSetOfInt(p: Parameter<Set<Int>>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithSetOfInt__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithOptionalSetOfInt(p: Parameter<Set<Int>?>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithOptionalSetOfInt__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithDict(p: Parameter<[String: SomeClass]>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodWithDict__p_p(`p`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodWithStringParameter(p: Parameter<String>) -> Verify { return Verify(method: .m_methodWithStringParameter__p_p(`p`))}
        public static func methodWithOtionalStringParameter(p: Parameter<String?>) -> Verify { return Verify(method: .m_methodWithOtionalStringParameter__p_p(`p`))}
        public static func methodWithCustomStringParameter(p: Parameter<CustomString>) -> Verify { return Verify(method: .m_methodWithCustomStringParameter__p_p(`p`))}
        public static func methodWithCustomOptionalStringParameter(p: Parameter<CustomString?>) -> Verify { return Verify(method: .m_methodWithCustomOptionalStringParameter__p_p(`p`))}
        public static func methodWithIntParameter(p: Parameter<Int>) -> Verify { return Verify(method: .m_methodWithIntParameter__p_p(`p`))}
        public static func methodWithCustomOptionalIntParameter(p: Parameter<CustomInt?>) -> Verify { return Verify(method: .m_methodWithCustomOptionalIntParameter__p_p(`p`))}
        public static func methodWithBool(p: Parameter<Bool?>) -> Verify { return Verify(method: .m_methodWithBool__p_p(`p`))}
        public static func methodWithFloat(p: Parameter<Float?>) -> Verify { return Verify(method: .m_methodWithFloat__p_p(`p`))}
        public static func methodWithDouble(p: Parameter<Double?>) -> Verify { return Verify(method: .m_methodWithDouble__p_p(`p`))}
        public static func methodWithArrayOfInt(p: Parameter<[Int]>) -> Verify { return Verify(method: .m_methodWithArrayOfInt__p_p(`p`))}
        public static func methodWithArrayOfOther(p: Parameter<[SomeClass]>) -> Verify { return Verify(method: .m_methodWithArrayOfOther__p_p(`p`))}
        public static func methodWithSetOfInt(p: Parameter<Set<Int>>) -> Verify { return Verify(method: .m_methodWithSetOfInt__p_p(`p`))}
        public static func methodWithOptionalSetOfInt(p: Parameter<Set<Int>?>) -> Verify { return Verify(method: .m_methodWithOptionalSetOfInt__p_p(`p`))}
        public static func methodWithDict(p: Parameter<[String: SomeClass]>) -> Verify { return Verify(method: .m_methodWithDict__p_p(`p`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodWithStringParameter(p: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_methodWithStringParameter__p_p(`p`), performs: perform)
        }
        public static func methodWithOtionalStringParameter(p: Parameter<String?>, perform: @escaping (String?) -> Void) -> Perform {
            return Perform(method: .m_methodWithOtionalStringParameter__p_p(`p`), performs: perform)
        }
        public static func methodWithCustomStringParameter(p: Parameter<CustomString>, perform: @escaping (CustomString) -> Void) -> Perform {
            return Perform(method: .m_methodWithCustomStringParameter__p_p(`p`), performs: perform)
        }
        public static func methodWithCustomOptionalStringParameter(p: Parameter<CustomString?>, perform: @escaping (CustomString?) -> Void) -> Perform {
            return Perform(method: .m_methodWithCustomOptionalStringParameter__p_p(`p`), performs: perform)
        }
        public static func methodWithIntParameter(p: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_methodWithIntParameter__p_p(`p`), performs: perform)
        }
        public static func methodWithCustomOptionalIntParameter(p: Parameter<CustomInt?>, perform: @escaping (CustomInt?) -> Void) -> Perform {
            return Perform(method: .m_methodWithCustomOptionalIntParameter__p_p(`p`), performs: perform)
        }
        public static func methodWithBool(p: Parameter<Bool?>, perform: @escaping (Bool?) -> Void) -> Perform {
            return Perform(method: .m_methodWithBool__p_p(`p`), performs: perform)
        }
        public static func methodWithFloat(p: Parameter<Float?>, perform: @escaping (Float?) -> Void) -> Perform {
            return Perform(method: .m_methodWithFloat__p_p(`p`), performs: perform)
        }
        public static func methodWithDouble(p: Parameter<Double?>, perform: @escaping (Double?) -> Void) -> Perform {
            return Perform(method: .m_methodWithDouble__p_p(`p`), performs: perform)
        }
        public static func methodWithArrayOfInt(p: Parameter<[Int]>, perform: @escaping ([Int]) -> Void) -> Perform {
            return Perform(method: .m_methodWithArrayOfInt__p_p(`p`), performs: perform)
        }
        public static func methodWithArrayOfOther(p: Parameter<[SomeClass]>, perform: @escaping ([SomeClass]) -> Void) -> Perform {
            return Perform(method: .m_methodWithArrayOfOther__p_p(`p`), performs: perform)
        }
        public static func methodWithSetOfInt(p: Parameter<Set<Int>>, perform: @escaping (Set<Int>) -> Void) -> Perform {
            return Perform(method: .m_methodWithSetOfInt__p_p(`p`), performs: perform)
        }
        public static func methodWithOptionalSetOfInt(p: Parameter<Set<Int>?>, perform: @escaping (Set<Int>?) -> Void) -> Perform {
            return Perform(method: .m_methodWithOptionalSetOfInt__p_p(`p`), performs: perform)
        }
        public static func methodWithDict(p: Parameter<[String: SomeClass]>, perform: @escaping ([String: SomeClass]) -> Void) -> Perform {
            return Perform(method: .m_methodWithDict__p_p(`p`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - AnotherProtocol
open class AnotherProtocolMock: AnotherProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func doSomething<T: ProtocolWithAssociatedType2>(type: T) -> T.ValueType? {
        let method = MethodType.m_doSomething__type_type(Parameter<T>.value(`type`).wrapAsGeneric())
		let stringName = "doSomething<T: ProtocolWithAssociatedType2>(type: T)"
		return registry.invoke(method, of: (T.ValueType).self, named: stringName) {
			($0 as? (T) -> Void)?(`type`)
		}
    }

    open func doSomething2<T: ProtocolWithAssociatedType2>(type: T, withValue: T.ValueType?) {
        let method = MethodType.m_doSomething2__type_typewithValue_withValue(Parameter<T>.value(`type`).wrapAsGeneric(), Parameter<T.ValueType?>.value(`withValue`).wrapAsGeneric())
		let stringName = "doSomething2<T: ProtocolWithAssociatedType2>(type: T, withValue: T.ValueType?)"
		return registry.invoke(method, named: stringName) {
			($0 as? (T, T.ValueType?) -> Void)?(`type`, `withValue`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_doSomething__type_type(Parameter<GenericAttribute>)
        case m_doSomething2__type_typewithValue_withValue(Parameter<GenericAttribute>, Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_doSomething__type_type(let lhsType), .m_doSomething__type_type(let rhsType)):
                guard Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher) else { return false } 
                return true 
            case (.m_doSomething2__type_typewithValue_withValue(let lhsType, let lhsWithvalue), .m_doSomething2__type_typewithValue_withValue(let rhsType, let rhsWithvalue)):
                guard Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsWithvalue, rhs: rhsWithvalue, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_doSomething__type_type(p0): return p0.intValue
            case let .m_doSomething2__type_typewithValue_withValue(p0, p1): return p0.intValue + p1.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func doSomething<T: ProtocolWithAssociatedType2>(type: Parameter<T>, willReturn: T.ValueType?...) -> MethodStub {
            return Given(method: .m_doSomething__type_type(`type`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func doSomething<T: ProtocolWithAssociatedType2>(type: Parameter<T>, willProduce: (Stubber<T.ValueType?>) -> Void) -> MethodStub {
            let willReturn: [T.ValueType?] = []
			let given: Given = { return Given(method: .m_doSomething__type_type(`type`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (T.ValueType?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func doSomething<T>(type: Parameter<T>) -> Verify where T:ProtocolWithAssociatedType2 { return Verify(method: .m_doSomething__type_type(`type`.wrapAsGeneric()))}
        public static func doSomething2<T>(type: Parameter<T>, withValue: Parameter<T.ValueType?>) -> Verify where T:ProtocolWithAssociatedType2 { return Verify(method: .m_doSomething2__type_typewithValue_withValue(`type`.wrapAsGeneric(), `withValue`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func doSomething<T>(type: Parameter<T>, perform: @escaping (T) -> Void) -> Perform where T:ProtocolWithAssociatedType2 {
            return Perform(method: .m_doSomething__type_type(`type`.wrapAsGeneric()), performs: perform)
        }
        public static func doSomething2<T>(type: Parameter<T>, withValue: Parameter<T.ValueType?>, perform: @escaping (T, T.ValueType?) -> Void) -> Perform where T:ProtocolWithAssociatedType2 {
            return Perform(method: .m_doSomething2__type_typewithValue_withValue(`type`.wrapAsGeneric(), `withValue`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ComplicatedServiceType
open class ComplicatedServiceTypeMock: ComplicatedServiceType, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var youCouldOnlyGetThis: String {
		get {	registry.addInvocation(.p_youCouldOnlyGetThis_get); return __p_youCouldOnlyGetThis ?? registry.givenGetterValue(.p_youCouldOnlyGetThis_get, "ComplicatedServiceTypeMock - stub value for youCouldOnlyGetThis was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_youCouldOnlyGetThis = newValue }
	}
	private var __p_youCouldOnlyGetThis: (String)?





    open func serviceName() -> String {
        let method = MethodType.m_serviceName
		let stringName = "serviceName()"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func aNewWayToSayHooray() {
        let method = MethodType.m_aNewWayToSayHooray
		let stringName = "aNewWayToSayHooray()"
		return registry.invoke(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func getPoint(from point: Point) -> Point {
        let method = MethodType.m_getPoint__from_point(Parameter<Point>.value(`point`))
		let stringName = "getPoint(from point: Point)"
		return registry.invoke(method, of: (Point).self, named: stringName) {
			($0 as? (Point) -> Void)?(`point`)
		}
    }

    open func getPoint(from tuple: (Float,Float)) -> Point {
        let method = MethodType.m_getPoint__from_tuple(Parameter<(Float,Float)>.value(`tuple`))
		let stringName = "getPoint(from tuple: (Float,Float))"
		return registry.invoke(method, of: (Point).self, named: stringName) {
			($0 as? ((Float,Float)) -> Void)?(`tuple`)
		}
    }

    open func similarMethodThatDiffersOnType(_ value: Float) -> Bool {
        let method = MethodType.m_similarMethodThatDiffersOnType__value_1(Parameter<Float>.value(`value`))
		let stringName = "similarMethodThatDiffersOnType(_ value: Float)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Float) -> Void)?(`value`)
		}
    }

    open func similarMethodThatDiffersOnType(_ value: Point) -> Bool {
        let method = MethodType.m_similarMethodThatDiffersOnType__value_2(Parameter<Point>.value(`value`))
		let stringName = "similarMethodThatDiffersOnType(_ value: Point)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Point) -> Void)?(`value`)
		}
    }

    open func methodWithTypedef(_ scalar: Scalar) {
        let method = MethodType.m_methodWithTypedef__scalar(Parameter<Scalar>.value(`scalar`))
		let stringName = "methodWithTypedef(_ scalar: Scalar)"
		return registry.invoke(method, named: stringName) {
			($0 as? (Scalar) -> Void)?(`scalar`)
		}
    }

    open func methodWithClosures(success function: LinearFunction) -> ClosureFabric {
        let method = MethodType.m_methodWithClosures__success_function_1(Parameter<LinearFunction>.value(`function`))
		let stringName = "methodWithClosures(success function: LinearFunction)"
		return registry.invoke(method, of: (ClosureFabric).self, named: stringName) {
			($0 as? (LinearFunction) -> Void)?(`function`)
		}
    }

    open func methodWithClosures(success function: ((Scalar,Scalar) -> Scalar)?) -> ((Int) -> Void) {
        let method = MethodType.m_methodWithClosures__success_function_2(Parameter<((Scalar,Scalar) -> Scalar)?>.value(`function`))
		let stringName = "methodWithClosures(success function: ((Scalar,Scalar) -> Scalar)?)"
		return registry.invoke(method, of: ((Int) -> Void).self, named: stringName) {
			($0 as? (((Scalar,Scalar) -> Scalar)?) -> Void)?(`function`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_serviceName
        case m_aNewWayToSayHooray
        case m_getPoint__from_point(Parameter<Point>)
        case m_getPoint__from_tuple(Parameter<(Float,Float)>)
        case m_similarMethodThatDiffersOnType__value_1(Parameter<Float>)
        case m_similarMethodThatDiffersOnType__value_2(Parameter<Point>)
        case m_methodWithTypedef__scalar(Parameter<Scalar>)
        case m_methodWithClosures__success_function_1(Parameter<LinearFunction>)
        case m_methodWithClosures__success_function_2(Parameter<((Scalar,Scalar) -> Scalar)?>)
        case p_youCouldOnlyGetThis_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_serviceName, .m_serviceName):
                return true 
            case (.m_aNewWayToSayHooray, .m_aNewWayToSayHooray):
                return true 
            case (.m_getPoint__from_point(let lhsPoint), .m_getPoint__from_point(let rhsPoint)):
                guard Parameter.compare(lhs: lhsPoint, rhs: rhsPoint, with: matcher) else { return false } 
                return true 
            case (.m_getPoint__from_tuple(let lhsTuple), .m_getPoint__from_tuple(let rhsTuple)):
                guard Parameter.compare(lhs: lhsTuple, rhs: rhsTuple, with: matcher) else { return false } 
                return true 
            case (.m_similarMethodThatDiffersOnType__value_1(let lhsValue), .m_similarMethodThatDiffersOnType__value_1(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_similarMethodThatDiffersOnType__value_2(let lhsValue), .m_similarMethodThatDiffersOnType__value_2(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_methodWithTypedef__scalar(let lhsScalar), .m_methodWithTypedef__scalar(let rhsScalar)):
                guard Parameter.compare(lhs: lhsScalar, rhs: rhsScalar, with: matcher) else { return false } 
                return true 
            case (.m_methodWithClosures__success_function_1(let lhsFunction), .m_methodWithClosures__success_function_1(let rhsFunction)):
                guard Parameter.compare(lhs: lhsFunction, rhs: rhsFunction, with: matcher) else { return false } 
                return true 
            case (.m_methodWithClosures__success_function_2(let lhsFunction), .m_methodWithClosures__success_function_2(let rhsFunction)):
                guard Parameter.compare(lhs: lhsFunction, rhs: rhsFunction, with: matcher) else { return false } 
                return true 
            case (.p_youCouldOnlyGetThis_get,.p_youCouldOnlyGetThis_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_serviceName: return 0
            case .m_aNewWayToSayHooray: return 0
            case let .m_getPoint__from_point(p0): return p0.intValue
            case let .m_getPoint__from_tuple(p0): return p0.intValue
            case let .m_similarMethodThatDiffersOnType__value_1(p0): return p0.intValue
            case let .m_similarMethodThatDiffersOnType__value_2(p0): return p0.intValue
            case let .m_methodWithTypedef__scalar(p0): return p0.intValue
            case let .m_methodWithClosures__success_function_1(p0): return p0.intValue
            case let .m_methodWithClosures__success_function_2(p0): return p0.intValue
            case .p_youCouldOnlyGetThis_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func youCouldOnlyGetThis(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_youCouldOnlyGetThis_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func serviceName(willReturn: String...) -> MethodStub {
            return Given(method: .m_serviceName, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getPoint(from point: Parameter<Point>, willReturn: Point...) -> MethodStub {
            return Given(method: .m_getPoint__from_point(`point`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getPoint(from tuple: Parameter<(Float,Float)>, willReturn: Point...) -> MethodStub {
            return Given(method: .m_getPoint__from_tuple(`tuple`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_similarMethodThatDiffersOnType__value_1(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_similarMethodThatDiffersOnType__value_2(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithClosures(success function: Parameter<LinearFunction>, willReturn: ClosureFabric...) -> MethodStub {
            return Given(method: .m_methodWithClosures__success_function_1(`function`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>, willReturn: (Int) -> Void...) -> MethodStub {
            return Given(method: .m_methodWithClosures__success_function_2(`function`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func serviceName(willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_serviceName, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
        public static func getPoint(from point: Parameter<Point>, willProduce: (Stubber<Point>) -> Void) -> MethodStub {
            let willReturn: [Point] = []
			let given: Given = { return Given(method: .m_getPoint__from_point(`point`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Point).self)
			willProduce(stubber)
			return given
        }
        public static func getPoint(from tuple: Parameter<(Float,Float)>, willProduce: (Stubber<Point>) -> Void) -> MethodStub {
            let willReturn: [Point] = []
			let given: Given = { return Given(method: .m_getPoint__from_tuple(`tuple`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Point).self)
			willProduce(stubber)
			return given
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_similarMethodThatDiffersOnType__value_1(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_similarMethodThatDiffersOnType__value_2(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithClosures(success function: Parameter<LinearFunction>, willProduce: (Stubber<ClosureFabric>) -> Void) -> MethodStub {
            let willReturn: [ClosureFabric] = []
			let given: Given = { return Given(method: .m_methodWithClosures__success_function_1(`function`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (ClosureFabric).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>, willProduce: (Stubber<(Int) -> Void>) -> Void) -> MethodStub {
            let willReturn: [(Int) -> Void] = []
			let given: Given = { return Given(method: .m_methodWithClosures__success_function_2(`function`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ((Int) -> Void).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func serviceName() -> Verify { return Verify(method: .m_serviceName)}
        public static func aNewWayToSayHooray() -> Verify { return Verify(method: .m_aNewWayToSayHooray)}
        public static func getPoint(from point: Parameter<Point>) -> Verify { return Verify(method: .m_getPoint__from_point(`point`))}
        public static func getPoint(from tuple: Parameter<(Float,Float)>) -> Verify { return Verify(method: .m_getPoint__from_tuple(`tuple`))}
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>) -> Verify { return Verify(method: .m_similarMethodThatDiffersOnType__value_1(`value`))}
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>) -> Verify { return Verify(method: .m_similarMethodThatDiffersOnType__value_2(`value`))}
        public static func methodWithTypedef(_ scalar: Parameter<Scalar>) -> Verify { return Verify(method: .m_methodWithTypedef__scalar(`scalar`))}
        public static func methodWithClosures(success function: Parameter<LinearFunction>) -> Verify { return Verify(method: .m_methodWithClosures__success_function_1(`function`))}
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>) -> Verify { return Verify(method: .m_methodWithClosures__success_function_2(`function`))}
        public static var youCouldOnlyGetThis: Verify { return Verify(method: .p_youCouldOnlyGetThis_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func serviceName(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_serviceName, performs: perform)
        }
        public static func aNewWayToSayHooray(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_aNewWayToSayHooray, performs: perform)
        }
        public static func getPoint(from point: Parameter<Point>, perform: @escaping (Point) -> Void) -> Perform {
            return Perform(method: .m_getPoint__from_point(`point`), performs: perform)
        }
        public static func getPoint(from tuple: Parameter<(Float,Float)>, perform: @escaping ((Float,Float)) -> Void) -> Perform {
            return Perform(method: .m_getPoint__from_tuple(`tuple`), performs: perform)
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>, perform: @escaping (Float) -> Void) -> Perform {
            return Perform(method: .m_similarMethodThatDiffersOnType__value_1(`value`), performs: perform)
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>, perform: @escaping (Point) -> Void) -> Perform {
            return Perform(method: .m_similarMethodThatDiffersOnType__value_2(`value`), performs: perform)
        }
        public static func methodWithTypedef(_ scalar: Parameter<Scalar>, perform: @escaping (Scalar) -> Void) -> Perform {
            return Perform(method: .m_methodWithTypedef__scalar(`scalar`), performs: perform)
        }
        public static func methodWithClosures(success function: Parameter<LinearFunction>, perform: @escaping (LinearFunction) -> Void) -> Perform {
            return Perform(method: .m_methodWithClosures__success_function_1(`function`), performs: perform)
        }
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>, perform: @escaping (((Scalar,Scalar) -> Scalar)?) -> Void) -> Perform {
            return Perform(method: .m_methodWithClosures__success_function_2(`function`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - DateSortable
open class DateSortableMock: DateSortable, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var date: Date {
		get {	registry.addInvocation(.p_date_get); return __p_date ?? registry.givenGetterValue(.p_date_get, "DateSortableMock - stub value for date was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_date = newValue }
	}
	private var __p_date: (Date)?






    public enum MethodType: MethodTypeProtocol {
        case p_date_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.p_date_get,.p_date_get): return true
            }
        }

        public func intValue() -> Int {
            switch self {
            case .p_date_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func date(getter defaultValue: Date...) -> PropertyStub {
            return Given(method: .p_date_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static var date: Verify { return Verify(method: .p_date_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - EdgeCasesGenericsProtocol
open class EdgeCasesGenericsProtocolMock: EdgeCasesGenericsProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func sorted<Key, Value>(by key: Mytest<Key, Value>) {
        let method = MethodType.m_sorted__by_key(Parameter<Mytest<Key, Value>>.value(`key`).wrapAsGeneric())
		let stringName = "sorted<Key, Value>(by key: Mytest<Key, Value>)"
		return registry.invoke(method, named: stringName) {
			($0 as? (Mytest<Key, Value>) -> Void)?(`key`)
		}
    }

    open func getter<K,V: Sequence,T: Equatable>(swapped key: Mytest<K,V>) -> T {
        let method = MethodType.m_getter__swapped_key(Parameter<Mytest<K,V>>.value(`key`).wrapAsGeneric())
		let stringName = "getter<K,V: Sequence,T: Equatable>(swapped key: Mytest<K,V>)"
		return registry.invoke(method, of: (T).self, named: stringName) {
			($0 as? (Mytest<K,V>) -> Void)?(`key`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_sorted__by_key(Parameter<GenericAttribute>)
        case m_getter__swapped_key(Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_sorted__by_key(let lhsKey), .m_sorted__by_key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.m_getter__swapped_key(let lhsKey), .m_getter__swapped_key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_sorted__by_key(p0): return p0.intValue
            case let .m_getter__swapped_key(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func getter<K,V: Sequence,T: Equatable>(swapped key: Parameter<Mytest<K,V>>, willReturn: T...) -> MethodStub {
            return Given(method: .m_getter__swapped_key(`key`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getter<K,V: Sequence,T: Equatable>(swapped key: Parameter<Mytest<K,V>>, willProduce: (Stubber<T>) -> Void) -> MethodStub {
            let willReturn: [T] = []
			let given: Given = { return Given(method: .m_getter__swapped_key(`key`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (T).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func sorted<Key,Value>(by key: Parameter<Mytest<Key, Value>>) -> Verify { return Verify(method: .m_sorted__by_key(`key`.wrapAsGeneric()))}
        public static func getter<K,V>(swapped key: Parameter<Mytest<K,V>>) -> Verify where V:Sequence { return Verify(method: .m_getter__swapped_key(`key`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func sorted<Key,Value>(by key: Parameter<Mytest<Key, Value>>, perform: @escaping (Mytest<Key, Value>) -> Void) -> Perform {
            return Perform(method: .m_sorted__by_key(`key`.wrapAsGeneric()), performs: perform)
        }
        public static func getter<K,V>(swapped key: Parameter<Mytest<K,V>>, perform: @escaping (Mytest<K,V>) -> Void) -> Perform where V:Sequence {
            return Perform(method: .m_getter__swapped_key(`key`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - EmptyProtocol
open class EmptyProtocolMock: EmptyProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }






    public struct MethodType: MethodTypeProtocol {
        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool { return true }
        public func intValue() -> Int { return 0 }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - FailsWithAutoClosureOnSwift5
open class FailsWithAutoClosureOnSwift5Mock: FailsWithAutoClosureOnSwift5, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func connect(_ token: @autoclosure () -> String) -> Bool {
        let method = MethodType.m_connect__token(Parameter<() -> String>.any)
		let stringName = "connect(_ token: @autoclosure () -> String)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (@autoclosure () -> String) -> Void)?(`token`())
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_connect__token(Parameter<() -> String>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_connect__token(let lhsToken), .m_connect__token(let rhsToken)):
                guard Parameter.compare(lhs: lhsToken, rhs: rhsToken, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_connect__token(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func connect(_ token: Parameter<() -> String>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_connect__token(`token`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func connect(_ token: Parameter<() -> String>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_connect__token(`token`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func connect(_ token: Parameter<() -> String>) -> Verify { return Verify(method: .m_connect__token(`token`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func connect(_ token: Parameter<() -> String>, perform: @escaping (@autoclosure () -> String) -> Void) -> Perform {
            return Perform(method: .m_connect__token(`token`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - FailsWithKeywordArguments
open class FailsWithKeywordArgumentsMock: FailsWithKeywordArguments, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var `throw`: Error {
		get {	registry.addInvocation(.p_throw_get); return __p_throw ?? registry.givenGetterValue(.p_throw_get, "FailsWithKeywordArgumentsMock - stub value for `throw` was not defined") }
		set {	registry.addInvocation(.p_throw_set(.value(newValue))); __p_throw = newValue }
	}
	private var __p_throw: (Error)?





    open func foo(for: String) {
        let method = MethodType.m_foo__for_for(Parameter<String>.value(`for`))
		let stringName = "foo(for: String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String) -> Void)?(`for`)
		}
    }

    open func `throw`(while: String) -> Error {
        let method = MethodType.m_throw__while_while(Parameter<String>.value(`while`))
		let stringName = "`throw`(while: String)"
		return registry.invoke(method, of: (Error).self, named: stringName) {
			($0 as? (String) -> Void)?(`while`)
		}
    }

    open func `return`(do while: String) -> Bool {
        let method = MethodType.m_return__do_while(Parameter<String>.value(`while`))
		let stringName = "`return`(do while: String)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (String) -> Void)?(`while`)
		}
    }

    public subscript (_ return: Int) -> Bool {
		get {
			registry.addInvocation(.subscript_get_return(Parameter<Int>.value(`return`)))
			do {
				return try registry.methodReturnValue(.subscript_get_return(Parameter<Int>.value(`return`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_return(Parameter<Int>.value(`return`), Parameter<Bool>.value(newValue)))
		}
	}


    public enum MethodType: MethodTypeProtocol {
        case m_foo__for_for(Parameter<String>)
        case m_throw__while_while(Parameter<String>)
        case m_return__do_while(Parameter<String>)
        case p_throw_get
		case p_throw_set(Parameter<Error>)
        case subscript_get_return(Parameter<Int>)
		case subscript_set_return(Parameter<Int>, Parameter<Bool>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_foo__for_for(let lhsFor), .m_foo__for_for(let rhsFor)):
                guard Parameter.compare(lhs: lhsFor, rhs: rhsFor, with: matcher) else { return false } 
                return true 
            case (.m_throw__while_while(let lhsWhile), .m_throw__while_while(let rhsWhile)):
                guard Parameter.compare(lhs: lhsWhile, rhs: rhsWhile, with: matcher) else { return false } 
                return true 
            case (.m_return__do_while(let lhsWhile), .m_return__do_while(let rhsWhile)):
                guard Parameter.compare(lhs: lhsWhile, rhs: rhsWhile, with: matcher) else { return false } 
                return true 
            case (.p_throw_get,.p_throw_get): return true
			case (.p_throw_set(let left),.p_throw_set(let right)): return Parameter<Error>.compare(lhs: left, rhs: right, with: matcher)
            case (let .subscript_get_return(lhsReturn), let .subscript_get_return(rhsReturn)):
				guard Parameter.compare(lhs: lhsReturn, rhs: rhsReturn, with: matcher) else { return false }
				return true
			case (let .subscript_set_return(lhsReturn, lhsDidSet), let .subscript_set_return(rhsReturn, rhsDidSet)):
				guard Parameter.compare(lhs: lhsReturn, rhs: rhsReturn, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_foo__for_for(p0): return p0.intValue
            case let .m_throw__while_while(p0): return p0.intValue
            case let .m_return__do_while(p0): return p0.intValue
            case .p_throw_get: return 0
			case .p_throw_set(let newValue): return newValue.intValue
            case let .subscript_get_return(p0): return p0.intValue
			case let .subscript_set_return(p0, _): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func `throw`(getter defaultValue: Error...) -> PropertyStub {
            return Given(method: .p_throw_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func `throw`(while: Parameter<String>, willReturn: Error...) -> MethodStub {
            return Given(method: .m_throw__while_while(`while`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `return`(do while: Parameter<String>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_return__do_while(`while`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `throw`(while: Parameter<String>, willProduce: (Stubber<Error>) -> Void) -> MethodStub {
            let willReturn: [Error] = []
			let given: Given = { return Given(method: .m_throw__while_while(`while`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Error).self)
			willProduce(stubber)
			return given
        }
        public static func `return`(do while: Parameter<String>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_return__do_while(`while`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func `subscript`(_ return: Parameter<Int>, willReturn: Bool...) -> SubscriptStub {
            return Given(method: .subscript_get_return(`return`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func foo(for: Parameter<String>) -> Verify { return Verify(method: .m_foo__for_for(`for`))}
        public static func `throw`(while: Parameter<String>) -> Verify { return Verify(method: .m_throw__while_while(`while`))}
        public static func `return`(do while: Parameter<String>) -> Verify { return Verify(method: .m_return__do_while(`while`))}
        public static var `throw`: Verify { return Verify(method: .p_throw_get) }
		public static func `throw`(set newValue: Parameter<Error>) -> Verify { return Verify(method: .p_throw_set(newValue)) }
        public static func `subscript`(_ return: Parameter<Int>) -> Verify { return Verify(method: .subscript_get_return(`return`))}
        public static func `subscript`(_ return: Parameter<Int>, set newValue: Parameter<Bool>) -> Verify { return Verify(method: .subscript_set_return(`return`, newValue))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func foo(for: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_foo__for_for(`for`), performs: perform)
        }
        public static func `throw`(while: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_throw__while_while(`while`), performs: perform)
        }
        public static func `return`(do while: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_return__do_while(`while`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - FailsWithReturnedTypeBeingGenericOfSelf
public final class FailsWithReturnedTypeBeingGenericOfSelfMock: FailsWithReturnedTypeBeingGenericOfSelf, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    public func methodWillReturnSelfTypedArray() -> Array<FailsWithReturnedTypeBeingGenericOfSelfMock>  {
        func _wrapped<__Self__>() -> __Self__ {
		let method = MethodType.m_methodWillReturnSelfTypedArray
		let stringName = "methodWillReturnSelfTypedArray()"
		return registry.invoke(method, of: (__Self__).self, named: stringName) {
			($0 as? () -> Void)?()
		}
		}
		return _wrapped()
    }

    public func methodWillReturnSelfTypedArray2() -> [FailsWithReturnedTypeBeingGenericOfSelfMock]  {
        func _wrapped<__Self__>() -> __Self__ {
		let method = MethodType.m_methodWillReturnSelfTypedArray2
		let stringName = "methodWillReturnSelfTypedArray2()"
		return registry.invoke(method, of: (__Self__).self, named: stringName) {
			($0 as? () -> Void)?()
		}
		}
		return _wrapped()
    }

    public func methodWillReturnSelfTypedCustom() -> CustomGeneric<FailsWithReturnedTypeBeingGenericOfSelfMock>  {
        func _wrapped<__Self__>() -> __Self__ {
		let method = MethodType.m_methodWillReturnSelfTypedCustom
		let stringName = "methodWillReturnSelfTypedCustom()"
		return registry.invoke(method, of: (__Self__).self, named: stringName) {
			($0 as? () -> Void)?()
		}
		}
		return _wrapped()
    }

    open func test(value: FailsWithReturnedTypeBeingGenericOfSelfMock) -> Bool {
        let method = MethodType.m_test__value_value(Parameter<FailsWithReturnedTypeBeingGenericOfSelfMock>.value(`value`))
		let stringName = "test(value: FailsWithReturnedTypeBeingGenericOfSelfMock)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (FailsWithReturnedTypeBeingGenericOfSelfMock) -> Void)?(`value`)
		}
    }

    open func insanetTest(value: CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>) -> Bool {
        let method = MethodType.m_insanetTest__value_value(Parameter<CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>>.value(`value`))
		let stringName = "insanetTest(value: CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>) -> Void)?(`value`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodWillReturnSelfTypedArray
        case m_methodWillReturnSelfTypedArray2
        case m_methodWillReturnSelfTypedCustom
        case m_test__value_value(Parameter<FailsWithReturnedTypeBeingGenericOfSelfMock>)
        case m_insanetTest__value_value(Parameter<CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodWillReturnSelfTypedArray, .m_methodWillReturnSelfTypedArray):
                return true 
            case (.m_methodWillReturnSelfTypedArray2, .m_methodWillReturnSelfTypedArray2):
                return true 
            case (.m_methodWillReturnSelfTypedCustom, .m_methodWillReturnSelfTypedCustom):
                return true 
            case (.m_test__value_value(let lhsValue), .m_test__value_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_insanetTest__value_value(let lhsValue), .m_insanetTest__value_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_methodWillReturnSelfTypedArray: return 0
            case .m_methodWillReturnSelfTypedArray2: return 0
            case .m_methodWillReturnSelfTypedCustom: return 0
            case let .m_test__value_value(p0): return p0.intValue
            case let .m_insanetTest__value_value(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodWillReturnSelfTypedArray(willReturn: Array<FailsWithReturnedTypeBeingGenericOfSelfMock> ...) -> MethodStub {
            return Given(method: .m_methodWillReturnSelfTypedArray, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWillReturnSelfTypedArray2(willReturn: [FailsWithReturnedTypeBeingGenericOfSelfMock] ...) -> MethodStub {
            return Given(method: .m_methodWillReturnSelfTypedArray2, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWillReturnSelfTypedCustom(willReturn: CustomGeneric<FailsWithReturnedTypeBeingGenericOfSelfMock> ...) -> MethodStub {
            return Given(method: .m_methodWillReturnSelfTypedCustom, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func test(value: Parameter<FailsWithReturnedTypeBeingGenericOfSelfMock>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_test__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func insanetTest(value: Parameter<CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_insanetTest__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWillReturnSelfTypedArray(willProduce: (Stubber<Array<FailsWithReturnedTypeBeingGenericOfSelfMock> >) -> Void) -> MethodStub {
            let willReturn: [Array<FailsWithReturnedTypeBeingGenericOfSelfMock> ] = []
			let given: Given = { return Given(method: .m_methodWillReturnSelfTypedArray, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Array<FailsWithReturnedTypeBeingGenericOfSelfMock> ).self)
			willProduce(stubber)
			return given
        }
        public static func methodWillReturnSelfTypedArray2(willProduce: (Stubber<[FailsWithReturnedTypeBeingGenericOfSelfMock] >) -> Void) -> MethodStub {
            let willReturn: [[FailsWithReturnedTypeBeingGenericOfSelfMock] ] = []
			let given: Given = { return Given(method: .m_methodWillReturnSelfTypedArray2, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([FailsWithReturnedTypeBeingGenericOfSelfMock] ).self)
			willProduce(stubber)
			return given
        }
        public static func methodWillReturnSelfTypedCustom(willProduce: (Stubber<CustomGeneric<FailsWithReturnedTypeBeingGenericOfSelfMock> >) -> Void) -> MethodStub {
            let willReturn: [CustomGeneric<FailsWithReturnedTypeBeingGenericOfSelfMock> ] = []
			let given: Given = { return Given(method: .m_methodWillReturnSelfTypedCustom, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (CustomGeneric<FailsWithReturnedTypeBeingGenericOfSelfMock> ).self)
			willProduce(stubber)
			return given
        }
        public static func test(value: Parameter<FailsWithReturnedTypeBeingGenericOfSelfMock>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_test__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func insanetTest(value: Parameter<CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_insanetTest__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodWillReturnSelfTypedArray() -> Verify { return Verify(method: .m_methodWillReturnSelfTypedArray)}
        public static func methodWillReturnSelfTypedArray2() -> Verify { return Verify(method: .m_methodWillReturnSelfTypedArray2)}
        public static func methodWillReturnSelfTypedCustom() -> Verify { return Verify(method: .m_methodWillReturnSelfTypedCustom)}
        public static func test(value: Parameter<FailsWithReturnedTypeBeingGenericOfSelfMock>) -> Verify { return Verify(method: .m_test__value_value(`value`))}
        public static func insanetTest(value: Parameter<CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>>) -> Verify { return Verify(method: .m_insanetTest__value_value(`value`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodWillReturnSelfTypedArray(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_methodWillReturnSelfTypedArray, performs: perform)
        }
        public static func methodWillReturnSelfTypedArray2(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_methodWillReturnSelfTypedArray2, performs: perform)
        }
        public static func methodWillReturnSelfTypedCustom(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_methodWillReturnSelfTypedCustom, performs: perform)
        }
        public static func test(value: Parameter<FailsWithReturnedTypeBeingGenericOfSelfMock>, perform: @escaping (FailsWithReturnedTypeBeingGenericOfSelfMock) -> Void) -> Perform {
            return Perform(method: .m_test__value_value(`value`), performs: perform)
        }
        public static func insanetTest(value: Parameter<CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>>, perform: @escaping (CustomGeneric<[FailsWithReturnedTypeBeingGenericOfSelfMock]>) -> Void) -> Perform {
            return Perform(method: .m_insanetTest__value_value(`value`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - FailsWithUntagged
open class FailsWithUntaggedMock: FailsWithUntagged, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    public required init<T>(with t: T) { }

    open func foo<T>(_: T, bar : String) where T: Sequence {
        let method = MethodType.m_foo__barbar(Parameter<String>.value(`bar`))
		let stringName = "foo<T>(_: T, bar : String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String) -> Void)?(`bar`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_foo__barbar(Parameter<String>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_foo__barbar(let lhsBar), .m_foo__barbar(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_foo__barbar(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func foo(bar: Parameter<String>) -> Verify { return Verify(method: .m_foo__barbar(`bar`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func foo(bar: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_foo__barbar(`bar`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - GenericProtocolReturningInt
open class GenericProtocolReturningIntMock: GenericProtocolReturningInt, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func value<T>(for value: T) -> Int {
        let method = MethodType.m_value__for_value(Parameter<T>.value(`value`).wrapAsGeneric())
		let stringName = "value<T>(for value: T)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (T) -> Void)?(`value`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_value__for_value(Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_value__for_value(let lhsValue), .m_value__for_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_value__for_value(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func value<T>(for value: Parameter<T>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_value__for_value(`value`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func value<T>(for value: Parameter<T>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_value__for_value(`value`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func value<T>(for value: Parameter<T>) -> Verify { return Verify(method: .m_value__for_value(`value`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func value<T>(for value: Parameter<T>, perform: @escaping (T) -> Void) -> Perform {
            return Perform(method: .m_value__for_value(`value`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - GenericProtocolWithTypeConstraint
open class GenericProtocolWithTypeConstraintMock: GenericProtocolWithTypeConstraint, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func decode<T: Decodable>(_ type: T.Type, from data: Data) -> T {
        let method = MethodType.m_decode__typefrom_data(Parameter<T.Type>.value(`type`).wrapAsGeneric(), Parameter<Data>.value(`data`))
		let stringName = "decode<T: Decodable>(_ type: T.Type, from data: Data)"
		return registry.invoke(method, of: (T).self, named: stringName) {
			($0 as? (T.Type, Data) -> Void)?(`type`, `data`)
		}
    }

    open func test<FOO>(_ type: FOO.Type) -> Int {
        let method = MethodType.m_test__type(Parameter<FOO.Type>.value(`type`).wrapAsGeneric())
		let stringName = "test<FOO>(_ type: FOO.Type)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (FOO.Type) -> Void)?(`type`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_decode__typefrom_data(Parameter<GenericAttribute>, Parameter<Data>)
        case m_test__type(Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_decode__typefrom_data(let lhsType, let lhsData), .m_decode__typefrom_data(let rhsType, let rhsData)):
                guard Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsData, rhs: rhsData, with: matcher) else { return false } 
                return true 
            case (.m_test__type(let lhsType), .m_test__type(let rhsType)):
                guard Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_decode__typefrom_data(p0, p1): return p0.intValue + p1.intValue
            case let .m_test__type(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func decode<T: Decodable>(_ type: Parameter<T.Type>, from data: Parameter<Data>, willReturn: T...) -> MethodStub {
            return Given(method: .m_decode__typefrom_data(`type`.wrapAsGeneric(), `data`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func test<FOO>(_ type: Parameter<FOO.Type>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_test__type(`type`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func decode<T: Decodable>(_ type: Parameter<T.Type>, from data: Parameter<Data>, willProduce: (Stubber<T>) -> Void) -> MethodStub {
            let willReturn: [T] = []
			let given: Given = { return Given(method: .m_decode__typefrom_data(`type`.wrapAsGeneric(), `data`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (T).self)
			willProduce(stubber)
			return given
        }
        public static func test<FOO>(_ type: Parameter<FOO.Type>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_test__type(`type`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func decode<T>(_ type: Parameter<T.Type>, from data: Parameter<Data>) -> Verify where T:Decodable { return Verify(method: .m_decode__typefrom_data(`type`.wrapAsGeneric(), `data`))}
        public static func test<FOO>(_ type: Parameter<FOO.Type>) -> Verify { return Verify(method: .m_test__type(`type`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func decode<T>(_ type: Parameter<T.Type>, from data: Parameter<Data>, perform: @escaping (T.Type, Data) -> Void) -> Perform where T:Decodable {
            return Perform(method: .m_decode__typefrom_data(`type`.wrapAsGeneric(), `data`), performs: perform)
        }
        public static func test<FOO>(_ type: Parameter<FOO.Type>, perform: @escaping (FOO.Type) -> Void) -> Perform {
            return Perform(method: .m_test__type(`type`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - HistorySectionMapperType
open class HistorySectionMapperTypeMock: HistorySectionMapperType, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func map<T: DateSortable>(_ items: [T]) -> [(key: String, items: [T])] {
        let method = MethodType.m_map__items(Parameter<[T]>.value(`items`).wrapAsGeneric())
		let stringName = "map<T: DateSortable>(_ items: [T])"
		return registry.invoke(method, of: ([(key: String, items: [T])]).self, named: stringName) {
			($0 as? ([T]) -> Void)?(`items`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_map__items(Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_map__items(let lhsItems), .m_map__items(let rhsItems)):
                guard Parameter.compare(lhs: lhsItems, rhs: rhsItems, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_map__items(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func map<T: DateSortable>(_ items: Parameter<[T]>, willReturn: [(key: String, items: [T])]...) -> MethodStub {
            return Given(method: .m_map__items(`items`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func map<T: DateSortable>(_ items: Parameter<[T]>, willProduce: (Stubber<[(key: String, items: [T])]>) -> Void) -> MethodStub {
            let willReturn: [[(key: String, items: [T])]] = []
			let given: Given = { return Given(method: .m_map__items(`items`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([(key: String, items: [T])]).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func map<T>(_ items: Parameter<[T]>) -> Verify where T:DateSortable { return Verify(method: .m_map__items(`items`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func map<T>(_ items: Parameter<[T]>, perform: @escaping ([T]) -> Void) -> Perform where T:DateSortable {
            return Perform(method: .m_map__items(`items`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - InoutProtocol
open class InoutProtocolMock: InoutProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func passThisAsInOut(value: inout URLRequest) {
        let method = MethodType.m_passThisAsInOut__value_value(Parameter<URLRequest>.value(`value`))
		let stringName = "passThisAsInOut(value: inout URLRequest)"
		return registry.invoke(method, named: stringName) {
			($0 as? (inout URLRequest) -> Void)?(&`value`)
		}
    }

    open func returnAndInOut(value: inout Int) -> String {
        let method = MethodType.m_returnAndInOut__value_value(Parameter<Int>.value(`value`))
		let stringName = "returnAndInOut(value: inout Int)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (inout Int) -> Void)?(&`value`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_passThisAsInOut__value_value(Parameter<URLRequest>)
        case m_returnAndInOut__value_value(Parameter<Int>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_passThisAsInOut__value_value(let lhsValue), .m_passThisAsInOut__value_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_returnAndInOut__value_value(let lhsValue), .m_returnAndInOut__value_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_passThisAsInOut__value_value(p0): return p0.intValue
            case let .m_returnAndInOut__value_value(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func returnAndInOut(value: Parameter<Int>, willReturn: String...) -> MethodStub {
            return Given(method: .m_returnAndInOut__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func returnAndInOut(value: Parameter<Int>, willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_returnAndInOut__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func passThisAsInOut(value: Parameter<URLRequest>) -> Verify { return Verify(method: .m_passThisAsInOut__value_value(`value`))}
        public static func returnAndInOut(value: Parameter<Int>) -> Verify { return Verify(method: .m_returnAndInOut__value_value(`value`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func passThisAsInOut(value: Parameter<URLRequest>, perform: @escaping (inout URLRequest) -> Void) -> Perform {
            return Perform(method: .m_passThisAsInOut__value_value(`value`), performs: perform)
        }
        public static func returnAndInOut(value: Parameter<Int>, perform: @escaping (inout Int) -> Void) -> Perform {
            return Perform(method: .m_returnAndInOut__value_value(`value`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - NonSwiftProtocol
open class NonSwiftProtocolMock: NSObject, NonSwiftProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        super.init()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func returnNoting() {
        let method = MethodType.m_returnNoting
		let stringName = "returnNoting()"
		return registry.invoke(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func someMethod() {
        let method = MethodType.m_someMethod
		let stringName = "someMethod()"
		return registry.invoke(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_returnNoting
        case m_someMethod

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_returnNoting, .m_returnNoting):
                return true 
            case (.m_someMethod, .m_someMethod):
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_returnNoting: return 0
            case .m_someMethod: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func returnNoting() -> Verify { return Verify(method: .m_returnNoting)}
        public static func someMethod() -> Verify { return Verify(method: .m_someMethod)}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func returnNoting(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_returnNoting, performs: perform)
        }
        public static func someMethod(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_someMethod, performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolMethodsGenericThatDifferOnlyInReturnType
open class ProtocolMethodsGenericThatDifferOnlyInReturnTypeMock: ProtocolMethodsGenericThatDifferOnlyInReturnType, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func foo<T>(bar: T) -> String {
        let method = MethodType.m_foo__bar_bar_1(Parameter<T>.value(`bar`).wrapAsGeneric())
		let stringName = "foo<T>(bar: T)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (T) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: T) -> Int {
        let method = MethodType.m_foo__bar_bar_2(Parameter<T>.value(`bar`).wrapAsGeneric())
		let stringName = "foo<T>(bar: T)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (T) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: T) -> Float where T: A {
        let method = MethodType.m_foo__bar_bar_4(Parameter<T>.value(`bar`).wrapAsGeneric())
		let stringName = "foo<T>(bar: T)"
		return registry.invoke(method, of: (Float).self, named: stringName) {
			($0 as? (T) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: T) -> Float where T: B {
        let method = MethodType.m_foo__bar_bar_4(Parameter<T>.value(`bar`).wrapAsGeneric())
		let stringName = "foo<T>(bar: T)"
		return registry.invoke(method, of: (Float).self, named: stringName) {
			($0 as? (T) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: T) -> Double where T: B {
        let method = MethodType.m_foo__bar_bar_5(Parameter<T>.value(`bar`).wrapAsGeneric())
		let stringName = "foo<T>(bar: T)"
		return registry.invoke(method, of: (Double).self, named: stringName) {
			($0 as? (T) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: String) -> Array<T> {
        let method = MethodType.m_foo__bar_bar_6(Parameter<String>.value(`bar`))
		let stringName = "foo<T>(bar: String)"
		return registry.invoke(method, of: (Array<T>).self, named: stringName) {
			($0 as? (String) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: String) -> Set<T> {
        let method = MethodType.m_foo__bar_bar_7(Parameter<String>.value(`bar`))
		let stringName = "foo<T>(bar: String)"
		return registry.invoke(method, of: (Set<T>).self, named: stringName) {
			($0 as? (String) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: Bool) -> T where T: A {
        let method = MethodType.m_foo__bar_bar_9(Parameter<Bool>.value(`bar`))
		let stringName = "foo<T>(bar: Bool)"
		return registry.invoke(method, of: (T).self, named: stringName) {
			($0 as? (Bool) -> Void)?(`bar`)
		}
    }

    open func foo<T>(bar: Bool) -> T where T: B {
        let method = MethodType.m_foo__bar_bar_9(Parameter<Bool>.value(`bar`))
		let stringName = "foo<T>(bar: Bool)"
		return registry.invoke(method, of: (T).self, named: stringName) {
			($0 as? (Bool) -> Void)?(`bar`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_foo__bar_bar_1(Parameter<GenericAttribute>)
        case m_foo__bar_bar_2(Parameter<GenericAttribute>)
        case m_foo__bar_bar_4(Parameter<GenericAttribute>)
        case m_foo__bar_bar_5(Parameter<GenericAttribute>)
        case m_foo__bar_bar_6(Parameter<String>)
        case m_foo__bar_bar_7(Parameter<String>)
        case m_foo__bar_bar_9(Parameter<Bool>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_foo__bar_bar_1(let lhsBar), .m_foo__bar_bar_1(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            case (.m_foo__bar_bar_2(let lhsBar), .m_foo__bar_bar_2(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            case (.m_foo__bar_bar_4(let lhsBar), .m_foo__bar_bar_4(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            case (.m_foo__bar_bar_5(let lhsBar), .m_foo__bar_bar_5(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            case (.m_foo__bar_bar_6(let lhsBar), .m_foo__bar_bar_6(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            case (.m_foo__bar_bar_7(let lhsBar), .m_foo__bar_bar_7(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            case (.m_foo__bar_bar_9(let lhsBar), .m_foo__bar_bar_9(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_foo__bar_bar_1(p0): return p0.intValue
            case let .m_foo__bar_bar_2(p0): return p0.intValue
            case let .m_foo__bar_bar_4(p0): return p0.intValue
            case let .m_foo__bar_bar_5(p0): return p0.intValue
            case let .m_foo__bar_bar_6(p0): return p0.intValue
            case let .m_foo__bar_bar_7(p0): return p0.intValue
            case let .m_foo__bar_bar_9(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func foo<T>(bar: Parameter<T>, willReturn: String...) -> MethodStub {
            return Given(method: .m_foo__bar_bar_1(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo<T>(bar: Parameter<T>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_foo__bar_bar_2(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo<T>(bar: Parameter<T>, willReturn: Float...) -> MethodStub where T: A {
            return Given(method: .m_foo__bar_bar_4(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo<T>(bar: Parameter<T>, willReturn: Double...) -> MethodStub where T: B {
            return Given(method: .m_foo__bar_bar_5(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo<T>(bar: Parameter<String>, willReturn: Array<T>...) -> MethodStub {
            return Given(method: .m_foo__bar_bar_6(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo<T>(bar: Parameter<String>, willReturn: Set<T>...) -> MethodStub {
            return Given(method: .m_foo__bar_bar_7(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo<T>(bar: Parameter<Bool>, willReturn: T...) -> MethodStub where T: A {
            return Given(method: .m_foo__bar_bar_9(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo<T>(bar: Parameter<T>, willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_1(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
        public static func foo<T>(bar: Parameter<T>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_2(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func foo<T>(bar: Parameter<T>, willProduce: (Stubber<Float>) -> Void) -> MethodStub where T: A {
            let willReturn: [Float] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_4(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Float).self)
			willProduce(stubber)
			return given
        }
        public static func foo<T>(bar: Parameter<T>, willProduce: (Stubber<Double>) -> Void) -> MethodStub where T: B {
            let willReturn: [Double] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_5(`bar`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Double).self)
			willProduce(stubber)
			return given
        }
        public static func foo<T>(bar: Parameter<String>, willProduce: (Stubber<Array<T>>) -> Void) -> MethodStub {
            let willReturn: [Array<T>] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_6(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Array<T>).self)
			willProduce(stubber)
			return given
        }
        public static func foo<T>(bar: Parameter<String>, willProduce: (Stubber<Set<T>>) -> Void) -> MethodStub {
            let willReturn: [Set<T>] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_7(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Set<T>).self)
			willProduce(stubber)
			return given
        }
        public static func foo<T>(bar: Parameter<Bool>, willProduce: (Stubber<T>) -> Void) -> MethodStub where T: A {
            let willReturn: [T] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_9(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (T).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func foo<T>(bar: Parameter<T>, returning: (String).Type) -> Verify { return Verify(method: .m_foo__bar_bar_1(`bar`.wrapAsGeneric()))}
        public static func foo<T>(bar: Parameter<T>, returning: (Int).Type) -> Verify { return Verify(method: .m_foo__bar_bar_2(`bar`.wrapAsGeneric()))}
        public static func foo<T>(bar: Parameter<T>, returning: (Float).Type) -> Verify where T: A { return Verify(method: .m_foo__bar_bar_4(`bar`.wrapAsGeneric()))}
        public static func foo<T>(bar: Parameter<T>, returning: (Double).Type) -> Verify where T: B { return Verify(method: .m_foo__bar_bar_5(`bar`.wrapAsGeneric()))}
        public static func foo<T>(bar: Parameter<String>, returning: (Array<T>).Type) -> Verify { return Verify(method: .m_foo__bar_bar_6(`bar`))}
        public static func foo<T>(bar: Parameter<String>, returning: (Set<T>).Type) -> Verify { return Verify(method: .m_foo__bar_bar_7(`bar`))}
        public static func foo<T>(bar: Parameter<Bool>, returning: (T).Type) -> Verify where T: A { return Verify(method: .m_foo__bar_bar_9(`bar`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func foo<T>(bar: Parameter<T>, returning: (String).Type, perform: @escaping (T) -> Void) -> Perform {
            return Perform(method: .m_foo__bar_bar_1(`bar`.wrapAsGeneric()), performs: perform)
        }
        public static func foo<T>(bar: Parameter<T>, returning: (Int).Type, perform: @escaping (T) -> Void) -> Perform {
            return Perform(method: .m_foo__bar_bar_2(`bar`.wrapAsGeneric()), performs: perform)
        }
        public static func foo<T>(bar: Parameter<T>, returning: (Float).Type, perform: @escaping (T) -> Void) -> Perform where T: A {
            return Perform(method: .m_foo__bar_bar_4(`bar`.wrapAsGeneric()), performs: perform)
        }
        public static func foo<T>(bar: Parameter<T>, returning: (Double).Type, perform: @escaping (T) -> Void) -> Perform where T: B {
            return Perform(method: .m_foo__bar_bar_5(`bar`.wrapAsGeneric()), performs: perform)
        }
        public static func foo<T>(bar: Parameter<String>, returning: (Array<T>).Type, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_foo__bar_bar_6(`bar`), performs: perform)
        }
        public static func foo<T>(bar: Parameter<String>, returning: (Set<T>).Type, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_foo__bar_bar_7(`bar`), performs: perform)
        }
        public static func foo<T>(bar: Parameter<Bool>, returning: (T).Type, perform: @escaping (Bool) -> Void) -> Perform where T: A {
            return Perform(method: .m_foo__bar_bar_9(`bar`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolMethodsThatDifferOnlyInReturnType
open class ProtocolMethodsThatDifferOnlyInReturnTypeMock: ProtocolMethodsThatDifferOnlyInReturnType, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func foo(bar: String) -> String {
        let method = MethodType.m_foo__bar_bar_1(Parameter<String>.value(`bar`))
		let stringName = "foo(bar: String)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (String) -> Void)?(`bar`)
		}
    }

    open func foo(bar: String) -> Int {
        let method = MethodType.m_foo__bar_bar_2(Parameter<String>.value(`bar`))
		let stringName = "foo(bar: String)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`bar`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_foo__bar_bar_1(Parameter<String>)
        case m_foo__bar_bar_2(Parameter<String>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_foo__bar_bar_1(let lhsBar), .m_foo__bar_bar_1(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            case (.m_foo__bar_bar_2(let lhsBar), .m_foo__bar_bar_2(let rhsBar)):
                guard Parameter.compare(lhs: lhsBar, rhs: rhsBar, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_foo__bar_bar_1(p0): return p0.intValue
            case let .m_foo__bar_bar_2(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func foo(bar: Parameter<String>, willReturn: String...) -> MethodStub {
            return Given(method: .m_foo__bar_bar_1(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo(bar: Parameter<String>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_foo__bar_bar_2(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func foo(bar: Parameter<String>, willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_1(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
        public static func foo(bar: Parameter<String>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_foo__bar_bar_2(`bar`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func foo(bar: Parameter<String>, returning: (String).Type) -> Verify { return Verify(method: .m_foo__bar_bar_1(`bar`))}
        public static func foo(bar: Parameter<String>, returning: (Int).Type) -> Verify { return Verify(method: .m_foo__bar_bar_2(`bar`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func foo(bar: Parameter<String>, returning: (String).Type, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_foo__bar_bar_1(`bar`), performs: perform)
        }
        public static func foo(bar: Parameter<String>, returning: (Int).Type, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_foo__bar_bar_2(`bar`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithAssociatedType
open class ProtocolWithAssociatedTypeMock<T>: ProtocolWithAssociatedType, Mock where T: Sequence {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var sequence: T {
		get {	registry.addInvocation(.p_sequence_get); return __p_sequence ?? registry.givenGetterValue(.p_sequence_get, "ProtocolWithAssociatedTypeMock - stub value for sequence was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_sequence = newValue }
	}
	private var __p_sequence: (T)?





    open func methodWithType(t: T) -> Bool {
        let method = MethodType.m_methodWithType__t_t(Parameter<T>.value(`t`))
		let stringName = "methodWithType(t: T)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (T) -> Void)?(`t`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodWithType__t_t(Parameter<T>)
        case p_sequence_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodWithType__t_t(let lhsT), .m_methodWithType__t_t(let rhsT)):
                guard Parameter.compare(lhs: lhsT, rhs: rhsT, with: matcher) else { return false } 
                return true 
            case (.p_sequence_get,.p_sequence_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodWithType__t_t(p0): return p0.intValue
            case .p_sequence_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func sequence(getter defaultValue: T...) -> PropertyStub {
            return Given(method: .p_sequence_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func methodWithType(t: Parameter<T>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_methodWithType__t_t(`t`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithType(t: Parameter<T>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_methodWithType__t_t(`t`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodWithType(t: Parameter<T>) -> Verify { return Verify(method: .m_methodWithType__t_t(`t`))}
        public static var sequence: Verify { return Verify(method: .p_sequence_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodWithType(t: Parameter<T>, perform: @escaping (T) -> Void) -> Perform {
            return Perform(method: .m_methodWithType__t_t(`t`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithAssociatedType2
open class ProtocolWithAssociatedType2Mock<ValueType>: ProtocolWithAssociatedType2, Mock where ValueType: StringConvertibleType {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var property: String {
		get {	registry.addInvocation(.p_property_get); return __p_property ?? registry.givenGetterValue(.p_property_get, "ProtocolWithAssociatedType2Mock - stub value for property was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_property = newValue }
	}
	private var __p_property: (String)?






    public enum MethodType: MethodTypeProtocol {
        case p_property_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.p_property_get,.p_property_get): return true
            }
        }

        public func intValue() -> Int {
            switch self {
            case .p_property_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func property(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_property_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static var property: Verify { return Verify(method: .p_property_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithClosures
open class ProtocolWithClosuresMock: ProtocolWithClosures, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func methodThatTakes(closure: (Int) -> Int) {
        let method = MethodType.m_methodThatTakes__closure_closure(Parameter<(Int) -> Int>.any)
		let stringName = "methodThatTakes(closure: (Int) -> Int)"
		return registry.invoke(method, named: stringName) {
			($0 as? ((Int) -> Int) -> Void)?(`closure`)
		}
    }

    open func methodThatTakesEscaping(closure: @escaping (Int) -> Int) {
        let method = MethodType.m_methodThatTakesEscaping__closure_closure(Parameter<(Int) -> Int>.value(`closure`))
		let stringName = "methodThatTakesEscaping(closure: @escaping (Int) -> Int)"
		return registry.invoke(method, named: stringName) {
			($0 as? (@escaping (Int) -> Int) -> Void)?(`closure`)
		}
    }

    open func methodThatTakesCompletionBlock(completion: (Bool,Error?) -> Void) {
        let method = MethodType.m_methodThatTakesCompletionBlock__completion_completion(Parameter<(Bool,Error?) -> Void>.any)
		let stringName = "methodThatTakesCompletionBlock(completion: (Bool,Error?) -> Void)"
		return registry.invoke(method, named: stringName) {
			($0 as? ((Bool,Error?) -> Void) -> Void)?(`completion`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodThatTakes__closure_closure(Parameter<(Int) -> Int>)
        case m_methodThatTakesEscaping__closure_closure(Parameter<(Int) -> Int>)
        case m_methodThatTakesCompletionBlock__completion_completion(Parameter<(Bool,Error?) -> Void>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodThatTakes__closure_closure(let lhsClosure), .m_methodThatTakes__closure_closure(let rhsClosure)):
                guard Parameter.compare(lhs: lhsClosure, rhs: rhsClosure, with: matcher) else { return false } 
                return true 
            case (.m_methodThatTakesEscaping__closure_closure(let lhsClosure), .m_methodThatTakesEscaping__closure_closure(let rhsClosure)):
                guard Parameter.compare(lhs: lhsClosure, rhs: rhsClosure, with: matcher) else { return false } 
                return true 
            case (.m_methodThatTakesCompletionBlock__completion_completion(let lhsCompletion), .m_methodThatTakesCompletionBlock__completion_completion(let rhsCompletion)):
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodThatTakes__closure_closure(p0): return p0.intValue
            case let .m_methodThatTakesEscaping__closure_closure(p0): return p0.intValue
            case let .m_methodThatTakesCompletionBlock__completion_completion(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodThatTakes(closure: Parameter<(Int) -> Int>) -> Verify { return Verify(method: .m_methodThatTakes__closure_closure(`closure`))}
        public static func methodThatTakesEscaping(closure: Parameter<(Int) -> Int>) -> Verify { return Verify(method: .m_methodThatTakesEscaping__closure_closure(`closure`))}
        public static func methodThatTakesCompletionBlock(completion: Parameter<(Bool,Error?) -> Void>) -> Verify { return Verify(method: .m_methodThatTakesCompletionBlock__completion_completion(`completion`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodThatTakes(closure: Parameter<(Int) -> Int>, perform: @escaping ((Int) -> Int) -> Void) -> Perform {
            return Perform(method: .m_methodThatTakes__closure_closure(`closure`), performs: perform)
        }
        public static func methodThatTakesEscaping(closure: Parameter<(Int) -> Int>, perform: @escaping (@escaping (Int) -> Int) -> Void) -> Perform {
            return Perform(method: .m_methodThatTakesEscaping__closure_closure(`closure`), performs: perform)
        }
        public static func methodThatTakesCompletionBlock(completion: Parameter<(Bool,Error?) -> Void>, perform: @escaping ((Bool,Error?) -> Void) -> Void) -> Perform {
            return Perform(method: .m_methodThatTakesCompletionBlock__completion_completion(`completion`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithConflictingMembers
open class ProtocolWithConflictingMembersMock: ProtocolWithConflictingMembers, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func method(withLabel value: Int) -> Bool {
        let method = MethodType.m_method__withLabel_value(Parameter<Int>.value(`value`))
		let stringName = "method(withLabel value: Int)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Int) -> Void)?(`value`)
		}
    }

    open func method(_ value: Int) -> Bool {
        let method = MethodType.m_method__value(Parameter<Int>.value(`value`))
		let stringName = "method(_ value: Int)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Int) -> Void)?(`value`)
		}
    }

    open func method(value: Int) -> Bool {
        let method = MethodType.m_method__value_value(Parameter<Int>.value(`value`))
		let stringName = "method(value: Int)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Int) -> Void)?(`value`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_method__withLabel_value(Parameter<Int>)
        case m_method__value(Parameter<Int>)
        case m_method__value_value(Parameter<Int>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_method__withLabel_value(let lhsValue), .m_method__withLabel_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_method__value(let lhsValue), .m_method__value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_method__value_value(let lhsValue), .m_method__value_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_method__withLabel_value(p0): return p0.intValue
            case let .m_method__value(p0): return p0.intValue
            case let .m_method__value_value(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func method(withLabel value: Parameter<Int>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_method__withLabel_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func method(_ value: Parameter<Int>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_method__value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func method(value: Parameter<Int>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_method__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func method(withLabel value: Parameter<Int>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_method__withLabel_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func method(_ value: Parameter<Int>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_method__value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func method(value: Parameter<Int>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_method__value_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func method(withLabel value: Parameter<Int>) -> Verify { return Verify(method: .m_method__withLabel_value(`value`))}
        public static func method(_ value: Parameter<Int>) -> Verify { return Verify(method: .m_method__value(`value`))}
        public static func method(value: Parameter<Int>) -> Verify { return Verify(method: .m_method__value_value(`value`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func method(withLabel value: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_method__withLabel_value(`value`), performs: perform)
        }
        public static func method(_ value: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_method__value(`value`), performs: perform)
        }
        public static func method(value: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_method__value_value(`value`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithCustomAttributes
open class ProtocolWithCustomAttributesMock: ProtocolWithCustomAttributes, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func methodThatTakesUser(user: UserObject) throws {
        let method = MethodType.m_methodThatTakesUser__user_user(Parameter<UserObject>.value(`user`))
		let stringName = "methodThatTakesUser(user: UserObject)"
		return try registry.invokeThrowing(method, named: stringName) {
			($0 as? (UserObject) -> Void)?(`user`)
		}
    }

    open func methodThatTakesArrayOfUsers(array: [UserObject]) -> Int {
        let method = MethodType.m_methodThatTakesArrayOfUsers__array_array(Parameter<[UserObject]>.value(`array`))
		let stringName = "methodThatTakesArrayOfUsers(array: [UserObject])"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? ([UserObject]) -> Void)?(`array`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodThatTakesUser__user_user(Parameter<UserObject>)
        case m_methodThatTakesArrayOfUsers__array_array(Parameter<[UserObject]>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodThatTakesUser__user_user(let lhsUser), .m_methodThatTakesUser__user_user(let rhsUser)):
                guard Parameter.compare(lhs: lhsUser, rhs: rhsUser, with: matcher) else { return false } 
                return true 
            case (.m_methodThatTakesArrayOfUsers__array_array(let lhsArray), .m_methodThatTakesArrayOfUsers__array_array(let rhsArray)):
                guard Parameter.compare(lhs: lhsArray, rhs: rhsArray, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodThatTakesUser__user_user(p0): return p0.intValue
            case let .m_methodThatTakesArrayOfUsers__array_array(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodThatTakesArrayOfUsers(array: Parameter<[UserObject]>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodThatTakesArrayOfUsers__array_array(`array`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodThatTakesArrayOfUsers(array: Parameter<[UserObject]>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodThatTakesArrayOfUsers__array_array(`array`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func methodThatTakesUser(user: Parameter<UserObject>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_methodThatTakesUser__user_user(`user`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatTakesUser(user: Parameter<UserObject>, willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_methodThatTakesUser__user_user(`user`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodThatTakesUser(user: Parameter<UserObject>) -> Verify { return Verify(method: .m_methodThatTakesUser__user_user(`user`))}
        public static func methodThatTakesArrayOfUsers(array: Parameter<[UserObject]>) -> Verify { return Verify(method: .m_methodThatTakesArrayOfUsers__array_array(`array`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodThatTakesUser(user: Parameter<UserObject>, perform: @escaping (UserObject) -> Void) -> Perform {
            return Perform(method: .m_methodThatTakesUser__user_user(`user`), performs: perform)
        }
        public static func methodThatTakesArrayOfUsers(array: Parameter<[UserObject]>, perform: @escaping ([UserObject]) -> Void) -> Perform {
            return Perform(method: .m_methodThatTakesArrayOfUsers__array_array(`array`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithDeprecatedMembers
open class ProtocolWithDeprecatedMembersMock: ProtocolWithDeprecatedMembers, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func method(_ value: Int) -> Bool {
        let method = MethodType.m_method__value(Parameter<Int>.value(`value`))
		let stringName = "method(_ value: Int)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Int) -> Void)?(`value`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_method__value(Parameter<Int>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_method__value(let lhsValue), .m_method__value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_method__value(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func method(_ value: Parameter<Int>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_method__value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func method(_ value: Parameter<Int>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_method__value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func method(_ value: Parameter<Int>) -> Verify { return Verify(method: .m_method__value(`value`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func method(_ value: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_method__value(`value`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithGenericConstraints
open class ProtocolWithGenericConstraintsMock<ContainedType>: ProtocolWithGenericConstraints, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var value: ContainedType {
		get {	registry.addInvocation(.p_value_get); return __p_value ?? registry.givenGetterValue(.p_value_get, "ProtocolWithGenericConstraintsMock - stub value for value was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_value = newValue }
	}
	private var __p_value: (ContainedType)?





    open func extractString<U: CustomStringConvertible>() -> String? where ContainedType == Optional<U> {
        let method = MethodType.m_extractString
		let stringName = "extractString<U: CustomStringConvertible>()"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_extractString
        case p_value_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_extractString, .m_extractString):
                return true 
            case (.p_value_get,.p_value_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_extractString: return 0
            case .p_value_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func value(getter defaultValue: ContainedType...) -> PropertyStub {
            return Given(method: .p_value_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func extractString<U: CustomStringConvertible>(willReturn: String?...) -> MethodStub where ContainedType == Optional<U> {
            return Given(method: .m_extractString, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func extractString<U: CustomStringConvertible>(willProduce: (Stubber<String?>) -> Void) -> MethodStub where ContainedType == Optional<U> {
            let willReturn: [String?] = []
			let given: Given = { return Given(method: .m_extractString, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func extractString() -> Verify { return Verify(method: .m_extractString)}
        public static var value: Verify { return Verify(method: .p_value_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func extractString(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_extractString, performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithGenericMethods
open class ProtocolWithGenericMethodsMock: ProtocolWithGenericMethods, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func methodWithGeneric<T>(lhs: T, rhs: T) -> Bool {
        let method = MethodType.m_methodWithGeneric__lhs_lhsrhs_rhs(Parameter<T>.value(`lhs`).wrapAsGeneric(), Parameter<T>.value(`rhs`).wrapAsGeneric())
		let stringName = "methodWithGeneric<T>(lhs: T, rhs: T)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (T, T) -> Void)?(`lhs`, `rhs`)
		}
    }

    open func methodWithGenericConstraint<U>(param: [U]) -> U where U: Equatable {
        let method = MethodType.m_methodWithGenericConstraint__param_param(Parameter<[U]>.value(`param`).wrapAsGeneric())
		let stringName = "methodWithGenericConstraint<U>(param: [U])"
		return registry.invoke(method, of: (U).self, named: stringName) {
			($0 as? ([U]) -> Void)?(`param`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodWithGeneric__lhs_lhsrhs_rhs(Parameter<GenericAttribute>, Parameter<GenericAttribute>)
        case m_methodWithGenericConstraint__param_param(Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodWithGeneric__lhs_lhsrhs_rhs(let lhsLhs, let lhsRhs), .m_methodWithGeneric__lhs_lhsrhs_rhs(let rhsLhs, let rhsRhs)):
                guard Parameter.compare(lhs: lhsLhs, rhs: rhsLhs, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsRhs, rhs: rhsRhs, with: matcher) else { return false } 
                return true 
            case (.m_methodWithGenericConstraint__param_param(let lhsParam), .m_methodWithGenericConstraint__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodWithGeneric__lhs_lhsrhs_rhs(p0, p1): return p0.intValue + p1.intValue
            case let .m_methodWithGenericConstraint__param_param(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodWithGeneric<T>(lhs: Parameter<T>, rhs: Parameter<T>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_methodWithGeneric__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithGenericConstraint<U>(param: Parameter<[U]>, willReturn: U...) -> MethodStub where U: Equatable {
            return Given(method: .m_methodWithGenericConstraint__param_param(`param`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithGeneric<T>(lhs: Parameter<T>, rhs: Parameter<T>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_methodWithGeneric__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithGenericConstraint<U>(param: Parameter<[U]>, willProduce: (Stubber<U>) -> Void) -> MethodStub where U: Equatable {
            let willReturn: [U] = []
			let given: Given = { return Given(method: .m_methodWithGenericConstraint__param_param(`param`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (U).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodWithGeneric<T>(lhs: Parameter<T>, rhs: Parameter<T>) -> Verify { return Verify(method: .m_methodWithGeneric__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()))}
        public static func methodWithGenericConstraint<U>(param: Parameter<[U]>) -> Verify { return Verify(method: .m_methodWithGenericConstraint__param_param(`param`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodWithGeneric<T>(lhs: Parameter<T>, rhs: Parameter<T>, perform: @escaping (T, T) -> Void) -> Perform {
            return Perform(method: .m_methodWithGeneric__lhs_lhsrhs_rhs(`lhs`.wrapAsGeneric(), `rhs`.wrapAsGeneric()), performs: perform)
        }
        public static func methodWithGenericConstraint<U>(param: Parameter<[U]>, perform: @escaping ([U]) -> Void) -> Perform {
            return Perform(method: .m_methodWithGenericConstraint__param_param(`param`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithGenericMethodsNested
open class ProtocolWithGenericMethodsNestedMock: ProtocolWithGenericMethodsNested, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func methodWithGeneric<T>(resource: Resource<T>) -> Observable<Response<T>> {
        let method = MethodType.m_methodWithGeneric__resource_resource(Parameter<Resource<T>>.value(`resource`).wrapAsGeneric())
		let stringName = "methodWithGeneric<T>(resource: Resource<T>)"
		return registry.invoke(method, of: (Observable<Response<T>>).self, named: stringName) {
			($0 as? (Resource<T>) -> Void)?(`resource`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodWithGeneric__resource_resource(Parameter<GenericAttribute>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodWithGeneric__resource_resource(let lhsResource), .m_methodWithGeneric__resource_resource(let rhsResource)):
                guard Parameter.compare(lhs: lhsResource, rhs: rhsResource, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodWithGeneric__resource_resource(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodWithGeneric<T>(resource: Parameter<Resource<T>>, willReturn: Observable<Response<T>>...) -> MethodStub {
            return Given(method: .m_methodWithGeneric__resource_resource(`resource`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithGeneric<T>(resource: Parameter<Resource<T>>, willProduce: (Stubber<Observable<Response<T>>>) -> Void) -> MethodStub {
            let willReturn: [Observable<Response<T>>] = []
			let given: Given = { return Given(method: .m_methodWithGeneric__resource_resource(`resource`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Observable<Response<T>>).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodWithGeneric<T>(resource: Parameter<Resource<T>>) -> Verify { return Verify(method: .m_methodWithGeneric__resource_resource(`resource`.wrapAsGeneric()))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodWithGeneric<T>(resource: Parameter<Resource<T>>, perform: @escaping (Resource<T>) -> Void) -> Perform {
            return Perform(method: .m_methodWithGeneric__resource_resource(`resource`.wrapAsGeneric()), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithInitializers
open class ProtocolWithInitializersMock: ProtocolWithInitializers, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var param: Int {
		get {	registry.addInvocation(.p_param_get); return __p_param ?? registry.givenGetterValue(.p_param_get, "ProtocolWithInitializersMock - stub value for param was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_param = newValue }
	}
	private var __p_param: (Int)?

    public var other: String {
		get {	registry.addInvocation(.p_other_get); return __p_other ?? registry.givenGetterValue(.p_other_get, "ProtocolWithInitializersMock - stub value for other was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_other = newValue }
	}
	private var __p_other: (String)?





    public required init(param: Int, other: String) { }

    public required init(param: Int) { }


    public enum MethodType: MethodTypeProtocol {
        case p_param_get
        case p_other_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.p_param_get,.p_param_get): return true
            case (.p_other_get,.p_other_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .p_param_get: return 0
            case .p_other_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func param(getter defaultValue: Int...) -> PropertyStub {
            return Given(method: .p_param_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func other(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_other_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static var param: Verify { return Verify(method: .p_param_get) }
        public static var other: Verify { return Verify(method: .p_other_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithPropoerties
open class ProtocolWithPropoertiesMock: ProtocolWithPropoerties, Mock, StaticMock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    static var registry = MockRegistry<StaticMethodType, StaticGiven, StaticVerify, StaticPerform>()
    
    static var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    static var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    static var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    public typealias StaticPropertyStub = StaticGiven
    public typealias StaticMethodStub = StaticGiven
    
    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public static func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var name: String {
		get {	registry.addInvocation(.p_name_get); return __p_name ?? registry.givenGetterValue(.p_name_get, "ProtocolWithPropoertiesMock - stub value for name was not defined") }
		set {	registry.addInvocation(.p_name_set(.value(newValue))); __p_name = newValue }
	}
	private var __p_name: (String)?

    public var email: String? {
		get {	registry.addInvocation(.p_email_get); return __p_email ?? registry.optionalGivenGetterValue(.p_email_get, "ProtocolWithPropoertiesMock - stub value for email was not defined") }
		set {	registry.addInvocation(.p_email_set(.value(newValue))); __p_email = newValue }
	}
	private var __p_email: (String)?


    public static var name: String {
		get {	ProtocolWithPropoertiesMock.registry.addInvocation(.p_name_get); return ProtocolWithPropoertiesMock.__p_name ?? registry.givenGetterValue(.p_name_get, "ProtocolWithPropoertiesMock - stub value for name was not defined") }
		set {	ProtocolWithPropoertiesMock.registry.addInvocation(.p_name_set(.value(newValue))); ProtocolWithPropoertiesMock.__p_name = newValue }
	}
	private static var __p_name: (String)?

    public static var defaultEmail: String? {
		get {	ProtocolWithPropoertiesMock.registry.addInvocation(.p_defaultEmail_get); return ProtocolWithPropoertiesMock.__p_defaultEmail ?? registry.optionalGivenGetterValue(.p_defaultEmail_get, "ProtocolWithPropoertiesMock - stub value for defaultEmail was not defined") }
		set {	ProtocolWithPropoertiesMock.registry.addInvocation(.p_defaultEmail_set(.value(newValue))); ProtocolWithPropoertiesMock.__p_defaultEmail = newValue }
	}
	private static var __p_defaultEmail: (String)?




    public static func defaultEmail(_ newValue: String!) {
        let method = StaticMethodType.sm_defaultEmail__newValue(Parameter<String?>.value(`newValue`))
		let stringName = "defaultEmail(_ newValue: String!)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String?) -> Void)?(`newValue`)
		}
    }

    open func name(_ newValue: String) {
        let method = MethodType.m_name__newValue(Parameter<String>.value(`newValue`))
		let stringName = "name(_ newValue: String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String) -> Void)?(`newValue`)
		}
    }

    open func email(_ newValue: String!) {
        let method = MethodType.m_email__newValue(Parameter<String?>.value(`newValue`))
		let stringName = "email(_ newValue: String!)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String?) -> Void)?(`newValue`)
		}
    }

    public enum StaticMethodType: MethodTypeProtocol {
        case sm_defaultEmail__newValue(Parameter<String?>)
        case p_name_get
		case p_name_set(Parameter<String>)
        case p_defaultEmail_get
		case p_defaultEmail_set(Parameter<String?>)

        public static func compareParameters(lhs: StaticMethodType, rhs: StaticMethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.sm_defaultEmail__newValue(let lhsNewvalue), .sm_defaultEmail__newValue(let rhsNewvalue)):
                guard Parameter.compare(lhs: lhsNewvalue, rhs: rhsNewvalue, with: matcher) else { return false } 
                return true 
            case (.p_name_get,.p_name_get): return true
			case (.p_name_set(let left),.p_name_set(let right)): return Parameter<String>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_defaultEmail_get,.p_defaultEmail_get): return true
			case (.p_defaultEmail_set(let left),.p_defaultEmail_set(let right)): return Parameter<String?>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
                case let .sm_defaultEmail__newValue(p0): return p0.intValue
                case .p_name_get: return 0
			case .p_name_set(let newValue): return newValue.intValue
                case .p_defaultEmail_get: return 0
			case .p_defaultEmail_set(let newValue): return newValue.intValue
            }
        }
    }

    open class StaticGiven: StubbedMethod, GivenProtocol {
        public var method: StaticMethodType

        private init(method: StaticMethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func name(getter defaultValue: String...) -> StaticPropertyStub {
            return StaticGiven(method: .p_name_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func defaultEmail(getter defaultValue: String?...) -> StaticPropertyStub {
            return StaticGiven(method: .p_defaultEmail_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct StaticVerify: VerifyProtocol {
        public var method: StaticMethodType

        public static func defaultEmail(_ newValue: Parameter<String?>) -> StaticVerify { return StaticVerify(method: .sm_defaultEmail__newValue(`newValue`))}
        public static var name: StaticVerify { return StaticVerify(method: .p_name_get) }
		public static func name(set newValue: Parameter<String>) -> StaticVerify { return StaticVerify(method: .p_name_set(newValue)) }
        public static var defaultEmail: StaticVerify { return StaticVerify(method: .p_defaultEmail_get) }
		public static func defaultEmail(set newValue: Parameter<String?>) -> StaticVerify { return StaticVerify(method: .p_defaultEmail_set(newValue)) }
    }

    public struct StaticPerform: PerformProtocol {
        public var method: StaticMethodType
        public var performs: Any

        public static func defaultEmail(_ newValue: Parameter<String?>, perform: @escaping (String?) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_defaultEmail__newValue(`newValue`), performs: perform)
        }
    }

    
    public enum MethodType: MethodTypeProtocol {
        case m_name__newValue(Parameter<String>)
        case m_email__newValue(Parameter<String?>)
        case p_name_get
		case p_name_set(Parameter<String>)
        case p_email_get
		case p_email_set(Parameter<String?>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_name__newValue(let lhsNewvalue), .m_name__newValue(let rhsNewvalue)):
                guard Parameter.compare(lhs: lhsNewvalue, rhs: rhsNewvalue, with: matcher) else { return false } 
                return true 
            case (.m_email__newValue(let lhsNewvalue), .m_email__newValue(let rhsNewvalue)):
                guard Parameter.compare(lhs: lhsNewvalue, rhs: rhsNewvalue, with: matcher) else { return false } 
                return true 
            case (.p_name_get,.p_name_get): return true
			case (.p_name_set(let left),.p_name_set(let right)): return Parameter<String>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_email_get,.p_email_get): return true
			case (.p_email_set(let left),.p_email_set(let right)): return Parameter<String?>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_name__newValue(p0): return p0.intValue
            case let .m_email__newValue(p0): return p0.intValue
            case .p_name_get: return 0
			case .p_name_set(let newValue): return newValue.intValue
            case .p_email_get: return 0
			case .p_email_set(let newValue): return newValue.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func name(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_name_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func email(getter defaultValue: String?...) -> PropertyStub {
            return Given(method: .p_email_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func name(_ newValue: Parameter<String>) -> Verify { return Verify(method: .m_name__newValue(`newValue`))}
        public static func email(_ newValue: Parameter<String?>) -> Verify { return Verify(method: .m_email__newValue(`newValue`))}
        public static var name: Verify { return Verify(method: .p_name_get) }
		public static func name(set newValue: Parameter<String>) -> Verify { return Verify(method: .p_name_set(newValue)) }
        public static var email: Verify { return Verify(method: .p_email_get) }
		public static func email(set newValue: Parameter<String?>) -> Verify { return Verify(method: .p_email_set(newValue)) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func name(_ newValue: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_name__newValue(`newValue`), performs: perform)
        }
        public static func email(_ newValue: Parameter<String?>, perform: @escaping (String?) -> Void) -> Perform {
            return Perform(method: .m_email__newValue(`newValue`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }

    static public func given(_ method: StaticGiven) {
        registry.given(method)
    }

    static public func perform(_ method: StaticPerform) {
        registry.perform(method)
    }

    static public func verify(_ method: StaticVerify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithStaticMembers
open class ProtocolWithStaticMembersMock: ProtocolWithStaticMembers, Mock, StaticMock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    static var registry = MockRegistry<StaticMethodType, StaticGiven, StaticVerify, StaticPerform>()
    
    static var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    static var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    static var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    public typealias StaticPropertyStub = StaticGiven
    public typealias StaticMethodStub = StaticGiven
    
    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public static func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }


    public static var staticProperty: String {
		get {	ProtocolWithStaticMembersMock.registry.addInvocation(.p_staticProperty_get); return ProtocolWithStaticMembersMock.__p_staticProperty ?? registry.givenGetterValue(.p_staticProperty_get, "ProtocolWithStaticMembersMock - stub value for staticProperty was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	ProtocolWithStaticMembersMock.__p_staticProperty = newValue }
	}
	private static var __p_staticProperty: (String)?




    public static func staticMethod(param: Int) throws -> Int {
        let method = StaticMethodType.sm_staticMethod__param_param(Parameter<Int>.value(`param`))
		let stringName = "staticMethod(param: Int)"
		return try registry.invokeThrowing(method, of: (Int).self, named: stringName) {
			($0 as? (Int) -> Void)?(`param`)
		}
    }

    public enum StaticMethodType: MethodTypeProtocol {
        case sm_staticMethod__param_param(Parameter<Int>)
        case p_staticProperty_get

        public static func compareParameters(lhs: StaticMethodType, rhs: StaticMethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.sm_staticMethod__param_param(let lhsParam), .sm_staticMethod__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.p_staticProperty_get,.p_staticProperty_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
                case let .sm_staticMethod__param_param(p0): return p0.intValue
                case .p_staticProperty_get: return 0
            }
        }
    }

    open class StaticGiven: StubbedMethod, GivenProtocol {
        public var method: StaticMethodType

        private init(method: StaticMethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func staticProperty(getter defaultValue: String...) -> StaticPropertyStub {
            return StaticGiven(method: .p_staticProperty_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func staticMethod(param: Parameter<Int>, willReturn: Int...) -> StaticMethodStub {
            return StaticGiven(method: .sm_staticMethod__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func staticMethod(param: Parameter<Int>, willThrow: Error...) -> StaticMethodStub {
            return StaticGiven(method: .sm_staticMethod__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func staticMethod(param: Parameter<Int>, willProduce: (StubberThrows<Int>) -> Void) -> StaticMethodStub {
            let willThrow: [Error] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_staticMethod__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct StaticVerify: VerifyProtocol {
        public var method: StaticMethodType

        public static func staticMethod(param: Parameter<Int>) -> StaticVerify { return StaticVerify(method: .sm_staticMethod__param_param(`param`))}
        public static var staticProperty: StaticVerify { return StaticVerify(method: .p_staticProperty_get) }
    }

    public struct StaticPerform: PerformProtocol {
        public var method: StaticMethodType
        public var performs: Any

        public static func staticMethod(param: Parameter<Int>, perform: @escaping (Int) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_staticMethod__param_param(`param`), performs: perform)
        }
    }

    
    public struct MethodType: MethodTypeProtocol {
        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool { return true }
        public func intValue() -> Int { return 0 }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }

    static public func given(_ method: StaticGiven) {
        registry.given(method)
    }

    static public func perform(_ method: StaticPerform) {
        registry.perform(method)
    }

    static public func verify(_ method: StaticVerify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithSubscripts
open class ProtocolWithSubscriptsMock: ProtocolWithSubscripts, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var something: Any {
		get {	registry.addInvocation(.p_something_get); return __p_something ?? registry.givenGetterValue(.p_something_get, "ProtocolWithSubscriptsMock - stub value for something was not defined") }
		set {	registry.addInvocation(.p_something_set(.value(newValue))); __p_something = newValue }
	}
	private var __p_something: (Any)?





    open func aaa(_ value: Int) -> Bool {
        let method = MethodType.m_aaa__value(Parameter<Int>.value(`value`))
		let stringName = "aaa(_ value: Int)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Int) -> Void)?(`value`)
		}
    }

    public subscript (_ index: Int) -> String {
		get {
			registry.addInvocation(.subscript_get_index_1(Parameter<Int>.value(`index`)))
			do {
				return try registry.methodReturnValue(.subscript_get_index_1(Parameter<Int>.value(`index`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_index_1(Parameter<Int>.value(`index`), Parameter<String>.value(newValue)))
		}
	}

    public subscript (labeled index: Int) -> String {
		get {
			registry.addInvocation(.subscript_get_labeled_index(Parameter<Int>.value(`index`)))
			do {
				return try registry.methodReturnValue(.subscript_get_labeled_index(Parameter<Int>.value(`index`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_labeled_index(Parameter<Int>.value(`index`), Parameter<String>.value(newValue)))
		}
	}

    public subscript (_ x: Int, _ y: Int) -> String {
		get {
			registry.addInvocation(.subscript_get_x_y(Parameter<Int>.value(`x`), Parameter<Int>.value(`y`)))
			do {
				return try registry.methodReturnValue(.subscript_get_x_y(Parameter<Int>.value(`x`), Parameter<Int>.value(`y`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_x_y(Parameter<Int>.value(`x`), Parameter<Int>.value(`y`), Parameter<String>.value(newValue)))
		}
	}

    public subscript (_ index: String) -> String {
		get {
			registry.addInvocation(.subscript_get_index_2(Parameter<String>.value(`index`)))
			do {
				return try registry.methodReturnValue(.subscript_get_index_2(Parameter<String>.value(`index`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_index_2(Parameter<String>.value(`index`), Parameter<String>.value(newValue)))
		}
	}

    public subscript (index index: String) -> String {
		get {
			registry.addInvocation(.subscript_get_index_index(Parameter<String>.value(`index`)))
			do {
				return try registry.methodReturnValue(.subscript_get_index_index(Parameter<String>.value(`index`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_index_index(Parameter<String>.value(`index`), Parameter<String>.value(newValue)))
		}
	}

    public subscript (label name: String) -> Int {
		get {
			registry.addInvocation(.subscript_get_label_name(Parameter<String>.value(`name`)))
			do {
				return try registry.methodReturnValue(.subscript_get_label_name(Parameter<String>.value(`name`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
	}

    public subscript<T: Sequence>(with generic: T) -> Bool where T.Element: Equatable {
		get {
			registry.addInvocation(.subscript_get_with_generic_1(Parameter<T>.value(`generic`).wrapAsGeneric()))
			do {
				return try registry.methodReturnValue(.subscript_get_with_generic_1(Parameter<T>.value(`generic`).wrapAsGeneric())).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_with_generic_1(Parameter<T>.value(`generic`).wrapAsGeneric(), Parameter<Bool>.value(newValue)))
		}
	}

    public subscript<T: FloatingPoint>(with generic: T) -> Int where T: FloatingPoint {
		get {
			registry.addInvocation(.subscript_get_with_generic_2(Parameter<T>.value(`generic`).wrapAsGeneric()))
			do {
				return try registry.methodReturnValue(.subscript_get_with_generic_2(Parameter<T>.value(`generic`).wrapAsGeneric())).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_with_generic_2(Parameter<T>.value(`generic`).wrapAsGeneric(), Parameter<Int>.value(newValue)))
		}
	}

    public subscript<T>(_ i: Int, _ type: T.Type) -> T {
		get {
			registry.addInvocation(.subscript_get_i_type(Parameter<Int>.value(`i`), Parameter<T.Type>.value(`type`).wrapAsGeneric()))
			do {
				return try registry.methodReturnValue(.subscript_get_i_type(Parameter<Int>.value(`i`), Parameter<T.Type>.value(`type`).wrapAsGeneric())).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_i_type(Parameter<Int>.value(`i`), Parameter<T.Type>.value(`type`).wrapAsGeneric(), Parameter<T>.value(newValue).wrapAsGeneric()))
		}
	}

    public subscript (closure c: @escaping (Int) -> Void) -> Bool {
		get {
			registry.addInvocation(.subscript_get_closure_c(Parameter<(Int) -> Void>.value(`c`)))
			do {
				return try registry.methodReturnValue(.subscript_get_closure_c(Parameter<(Int) -> Void>.value(`c`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_closure_c(Parameter<(Int) -> Void>.value(`c`), Parameter<Bool>.value(newValue)))
		}
	}

    public subscript (same same: Int) -> Bool {
		get {
			registry.addInvocation(.subscript_get_same_same_1(Parameter<Int>.value(`same`)))
			do {
				return try registry.methodReturnValue(.subscript_get_same_same_1(Parameter<Int>.value(`same`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_same_same_1(Parameter<Int>.value(`same`), Parameter<Bool>.value(newValue)))
		}
	}

    public subscript (same same: Int) -> Int {
		get {
			registry.addInvocation(.subscript_get_same_same_2(Parameter<Int>.value(`same`)))
			do {
				return try registry.methodReturnValue(.subscript_get_same_same_2(Parameter<Int>.value(`same`))).casted()
			} catch {
				registry.onFatalFailure("Stub return value not specified for subscript. Use given first."); Failure("noStubDefinedMessage")
			}
		}
		set {
			registry.addInvocation(.subscript_set_same_same_2(Parameter<Int>.value(`same`), Parameter<Int>.value(newValue)))
		}
	}


    public enum MethodType: MethodTypeProtocol {
        case m_aaa__value(Parameter<Int>)
        case p_something_get
		case p_something_set(Parameter<Any>)
        case subscript_get_index_1(Parameter<Int>)
		case subscript_set_index_1(Parameter<Int>, Parameter<String>)
        case subscript_get_labeled_index(Parameter<Int>)
		case subscript_set_labeled_index(Parameter<Int>, Parameter<String>)
        case subscript_get_x_y(Parameter<Int>, Parameter<Int>)
		case subscript_set_x_y(Parameter<Int>, Parameter<Int>, Parameter<String>)
        case subscript_get_index_2(Parameter<String>)
		case subscript_set_index_2(Parameter<String>, Parameter<String>)
        case subscript_get_index_index(Parameter<String>)
		case subscript_set_index_index(Parameter<String>, Parameter<String>)
        case subscript_get_label_name(Parameter<String>)
        case subscript_get_with_generic_1(Parameter<GenericAttribute>)
		case subscript_set_with_generic_1(Parameter<GenericAttribute>, Parameter<Bool>)
        case subscript_get_with_generic_2(Parameter<GenericAttribute>)
		case subscript_set_with_generic_2(Parameter<GenericAttribute>, Parameter<Int>)
        case subscript_get_i_type(Parameter<Int>, Parameter<GenericAttribute>)
		case subscript_set_i_type(Parameter<Int>, Parameter<GenericAttribute>, Parameter<GenericAttribute>)
        case subscript_get_closure_c(Parameter<(Int) -> Void>)
		case subscript_set_closure_c(Parameter<(Int) -> Void>, Parameter<Bool>)
        case subscript_get_same_same_1(Parameter<Int>)
		case subscript_set_same_same_1(Parameter<Int>, Parameter<Bool>)
        case subscript_get_same_same_2(Parameter<Int>)
		case subscript_set_same_same_2(Parameter<Int>, Parameter<Int>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_aaa__value(let lhsValue), .m_aaa__value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.p_something_get,.p_something_get): return true
			case (.p_something_set(let left),.p_something_set(let right)): return Parameter<Any>.compare(lhs: left, rhs: right, with: matcher)
            case (let .subscript_get_index_1(lhsIndex), let .subscript_get_index_1(rhsIndex)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return true
			case (let .subscript_set_index_1(lhsIndex, lhsDidSet), let .subscript_set_index_1(rhsIndex, rhsDidSet)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_labeled_index(lhsIndex), let .subscript_get_labeled_index(rhsIndex)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return true
			case (let .subscript_set_labeled_index(lhsIndex, lhsDidSet), let .subscript_set_labeled_index(rhsIndex, rhsDidSet)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_x_y(lhsX, lhsY), let .subscript_get_x_y(rhsX, rhsY)):
				guard Parameter.compare(lhs: lhsX, rhs: rhsX, with: matcher) else { return false }
				guard Parameter.compare(lhs: lhsY, rhs: rhsY, with: matcher) else { return false }
				return true
			case (let .subscript_set_x_y(lhsX, lhsY, lhsDidSet), let .subscript_set_x_y(rhsX, rhsY, rhsDidSet)):
				guard Parameter.compare(lhs: lhsX, rhs: rhsX, with: matcher) else { return false }
				guard Parameter.compare(lhs: lhsY, rhs: rhsY, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_index_2(lhsIndex), let .subscript_get_index_2(rhsIndex)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return true
			case (let .subscript_set_index_2(lhsIndex, lhsDidSet), let .subscript_set_index_2(rhsIndex, rhsDidSet)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_index_index(lhsIndex), let .subscript_get_index_index(rhsIndex)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return true
			case (let .subscript_set_index_index(lhsIndex, lhsDidSet), let .subscript_set_index_index(rhsIndex, rhsDidSet)):
				guard Parameter.compare(lhs: lhsIndex, rhs: rhsIndex, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_label_name(lhsName), let .subscript_get_label_name(rhsName)):
				guard Parameter.compare(lhs: lhsName, rhs: rhsName, with: matcher) else { return false }
				return true
            case (let .subscript_get_with_generic_1(lhsGeneric), let .subscript_get_with_generic_1(rhsGeneric)):
				guard Parameter.compare(lhs: lhsGeneric, rhs: rhsGeneric, with: matcher) else { return false }
				return true
			case (let .subscript_set_with_generic_1(lhsGeneric, lhsDidSet), let .subscript_set_with_generic_1(rhsGeneric, rhsDidSet)):
				guard Parameter.compare(lhs: lhsGeneric, rhs: rhsGeneric, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_with_generic_2(lhsGeneric), let .subscript_get_with_generic_2(rhsGeneric)):
				guard Parameter.compare(lhs: lhsGeneric, rhs: rhsGeneric, with: matcher) else { return false }
				return true
			case (let .subscript_set_with_generic_2(lhsGeneric, lhsDidSet), let .subscript_set_with_generic_2(rhsGeneric, rhsDidSet)):
				guard Parameter.compare(lhs: lhsGeneric, rhs: rhsGeneric, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_i_type(lhsI, lhsType), let .subscript_get_i_type(rhsI, rhsType)):
				guard Parameter.compare(lhs: lhsI, rhs: rhsI, with: matcher) else { return false }
				guard Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher) else { return false }
				return true
			case (let .subscript_set_i_type(lhsI, lhsType, lhsDidSet), let .subscript_set_i_type(rhsI, rhsType, rhsDidSet)):
				guard Parameter.compare(lhs: lhsI, rhs: rhsI, with: matcher) else { return false }
				guard Parameter.compare(lhs: lhsType, rhs: rhsType, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_closure_c(lhsC), let .subscript_get_closure_c(rhsC)):
				guard Parameter.compare(lhs: lhsC, rhs: rhsC, with: matcher) else { return false }
				return true
			case (let .subscript_set_closure_c(lhsC, lhsDidSet), let .subscript_set_closure_c(rhsC, rhsDidSet)):
				guard Parameter.compare(lhs: lhsC, rhs: rhsC, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_same_same_1(lhsSame), let .subscript_get_same_same_1(rhsSame)):
				guard Parameter.compare(lhs: lhsSame, rhs: rhsSame, with: matcher) else { return false }
				return true
			case (let .subscript_set_same_same_1(lhsSame, lhsDidSet), let .subscript_set_same_same_1(rhsSame, rhsDidSet)):
				guard Parameter.compare(lhs: lhsSame, rhs: rhsSame, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            case (let .subscript_get_same_same_2(lhsSame), let .subscript_get_same_same_2(rhsSame)):
				guard Parameter.compare(lhs: lhsSame, rhs: rhsSame, with: matcher) else { return false }
				return true
			case (let .subscript_set_same_same_2(lhsSame, lhsDidSet), let .subscript_set_same_same_2(rhsSame, rhsDidSet)):
				guard Parameter.compare(lhs: lhsSame, rhs: rhsSame, with: matcher) else { return false }
				return Parameter.compare(lhs: lhsDidSet, rhs: rhsDidSet, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_aaa__value(p0): return p0.intValue
            case .p_something_get: return 0
			case .p_something_set(let newValue): return newValue.intValue
            case let .subscript_get_index_1(p0): return p0.intValue
			case let .subscript_set_index_1(p0, _): return p0.intValue
            case let .subscript_get_labeled_index(p0): return p0.intValue
			case let .subscript_set_labeled_index(p0, _): return p0.intValue
            case let .subscript_get_x_y(p0, p1): return p0.intValue + p1.intValue
			case let .subscript_set_x_y(p0, p1, _): return p0.intValue + p1.intValue
            case let .subscript_get_index_2(p0): return p0.intValue
			case let .subscript_set_index_2(p0, _): return p0.intValue
            case let .subscript_get_index_index(p0): return p0.intValue
			case let .subscript_set_index_index(p0, _): return p0.intValue
            case let .subscript_get_label_name(p0): return p0.intValue
            case let .subscript_get_with_generic_1(p0): return p0.intValue
			case let .subscript_set_with_generic_1(p0, _): return p0.intValue
            case let .subscript_get_with_generic_2(p0): return p0.intValue
			case let .subscript_set_with_generic_2(p0, _): return p0.intValue
            case let .subscript_get_i_type(p0, p1): return p0.intValue + p1.intValue
			case let .subscript_set_i_type(p0, p1, _): return p0.intValue + p1.intValue
            case let .subscript_get_closure_c(p0): return p0.intValue
			case let .subscript_set_closure_c(p0, _): return p0.intValue
            case let .subscript_get_same_same_1(p0): return p0.intValue
			case let .subscript_set_same_same_1(p0, _): return p0.intValue
            case let .subscript_get_same_same_2(p0): return p0.intValue
			case let .subscript_set_same_same_2(p0, _): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func something(getter defaultValue: Any...) -> PropertyStub {
            return Given(method: .p_something_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func aaa(_ value: Parameter<Int>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_aaa__value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func aaa(_ value: Parameter<Int>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_aaa__value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func `subscript`(_ index: Parameter<Int>, willReturn: String...) -> SubscriptStub {
            return Given(method: .subscript_get_index_1(`index`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(labeled index: Parameter<Int>, willReturn: String...) -> SubscriptStub {
            return Given(method: .subscript_get_labeled_index(`index`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(_ x: Parameter<Int>, _ y: Parameter<Int>, willReturn: String...) -> SubscriptStub {
            return Given(method: .subscript_get_x_y(`x`, `y`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(_ index: Parameter<String>, willReturn: String...) -> SubscriptStub {
            return Given(method: .subscript_get_index_2(`index`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(index: Parameter<String>, willReturn: String...) -> SubscriptStub {
            return Given(method: .subscript_get_index_index(`index`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(label name: Parameter<String>, willReturn: Int...) -> SubscriptStub {
            return Given(method: .subscript_get_label_name(`name`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`<T: Sequence>(with generic: Parameter<T>, willReturn: Bool...) -> SubscriptStub {
            return Given(method: .subscript_get_with_generic_1(`generic`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`<T: FloatingPoint>(with generic: Parameter<T>, willReturn: Int...) -> SubscriptStub {
            return Given(method: .subscript_get_with_generic_2(`generic`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`<T>(_ i: Parameter<Int>, _ type: Parameter<T.Type>, willReturn: T...) -> SubscriptStub {
            return Given(method: .subscript_get_i_type(`i`, `type`.wrapAsGeneric()), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(closure c: Parameter<(Int) -> Void>, willReturn: Bool...) -> SubscriptStub {
            return Given(method: .subscript_get_closure_c(`c`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(same: Parameter<Int>, willReturn: Bool...) -> SubscriptStub {
            return Given(method: .subscript_get_same_same_1(`same`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func `subscript`(same: Parameter<Int>, willReturn: Int...) -> SubscriptStub {
            return Given(method: .subscript_get_same_same_2(`same`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func aaa(_ value: Parameter<Int>) -> Verify { return Verify(method: .m_aaa__value(`value`))}
        public static var something: Verify { return Verify(method: .p_something_get) }
		public static func something(set newValue: Parameter<Any>) -> Verify { return Verify(method: .p_something_set(newValue)) }
        public static func `subscript`(_ index: Parameter<Int>) -> Verify { return Verify(method: .subscript_get_index_1(`index`))}
        public static func `subscript`(_ index: Parameter<Int>, set newValue: Parameter<String>) -> Verify { return Verify(method: .subscript_set_index_1(`index`, newValue))}
        public static func `subscript`(labeled index: Parameter<Int>) -> Verify { return Verify(method: .subscript_get_labeled_index(`index`))}
        public static func `subscript`(labeled index: Parameter<Int>, set newValue: Parameter<String>) -> Verify { return Verify(method: .subscript_set_labeled_index(`index`, newValue))}
        public static func `subscript`(_ x: Parameter<Int>, _ y: Parameter<Int>) -> Verify { return Verify(method: .subscript_get_x_y(`x`, `y`))}
        public static func `subscript`(_ x: Parameter<Int>, _ y: Parameter<Int>, set newValue: Parameter<String>) -> Verify { return Verify(method: .subscript_set_x_y(`x`, `y`, newValue))}
        public static func `subscript`(_ index: Parameter<String>) -> Verify { return Verify(method: .subscript_get_index_2(`index`))}
        public static func `subscript`(_ index: Parameter<String>, set newValue: Parameter<String>) -> Verify { return Verify(method: .subscript_set_index_2(`index`, newValue))}
        public static func `subscript`(index: Parameter<String>) -> Verify { return Verify(method: .subscript_get_index_index(`index`))}
        public static func `subscript`(index: Parameter<String>, set newValue: Parameter<String>) -> Verify { return Verify(method: .subscript_set_index_index(`index`, newValue))}
        public static func `subscript`(label name: Parameter<String>) -> Verify { return Verify(method: .subscript_get_label_name(`name`))}
        public static func `subscript`<T: Sequence>(with generic: Parameter<T>) -> Verify { return Verify(method: .subscript_get_with_generic_1(`generic`.wrapAsGeneric()))}
        public static func `subscript`<T: Sequence>(with generic: Parameter<T>, set newValue: Parameter<Bool>) -> Verify { return Verify(method: .subscript_set_with_generic_1(`generic`.wrapAsGeneric(), newValue))}
        public static func `subscript`<T: FloatingPoint>(with generic: Parameter<T>) -> Verify { return Verify(method: .subscript_get_with_generic_2(`generic`.wrapAsGeneric()))}
        public static func `subscript`<T: FloatingPoint>(with generic: Parameter<T>, set newValue: Parameter<Int>) -> Verify { return Verify(method: .subscript_set_with_generic_2(`generic`.wrapAsGeneric(), newValue))}
        public static func `subscript`<T>(_ i: Parameter<Int>, _ type: Parameter<T.Type>) -> Verify { return Verify(method: .subscript_get_i_type(`i`, `type`.wrapAsGeneric()))}
        public static func `subscript`<T>(_ i: Parameter<Int>, _ type: Parameter<T.Type>, set newValue: Parameter<T>) -> Verify { return Verify(method: .subscript_set_i_type(`i`, `type`.wrapAsGeneric(), newValue.wrapAsGeneric()))}
        public static func `subscript`(closure c: Parameter<(Int) -> Void>) -> Verify { return Verify(method: .subscript_get_closure_c(`c`))}
        public static func `subscript`(closure c: Parameter<(Int) -> Void>, set newValue: Parameter<Bool>) -> Verify { return Verify(method: .subscript_set_closure_c(`c`, newValue))}
        public static func `subscript`(same: Parameter<Int>, returning: (Bool).Type) -> Verify { return Verify(method: .subscript_get_same_same_1(`same`))}
        public static func `subscript`(same: Parameter<Int>, set newValue: Parameter<Bool>) -> Verify { return Verify(method: .subscript_set_same_same_1(`same`, newValue))}
        public static func `subscript`(same: Parameter<Int>, returning: (Int).Type) -> Verify { return Verify(method: .subscript_get_same_same_2(`same`))}
        public static func `subscript`(same: Parameter<Int>, set newValue: Parameter<Int>) -> Verify { return Verify(method: .subscript_set_same_same_2(`same`, newValue))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func aaa(_ value: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_aaa__value(`value`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithThrowingMethods
open class ProtocolWithThrowingMethodsMock: ProtocolWithThrowingMethods, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func methodThatThrows() throws {
        let method = MethodType.m_methodThatThrows
		let stringName = "methodThatThrows()"
		return try registry.invokeThrowing(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func methodThatReturnsAndThrows(param: Int) throws -> Bool {
        let method = MethodType.m_methodThatReturnsAndThrows__param_param(Parameter<Int>.value(`param`))
		let stringName = "methodThatReturnsAndThrows(param: Int)"
		return try registry.invokeThrowing(method, of: (Bool).self, named: stringName) {
			($0 as? (Int) -> Void)?(`param`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodThatThrows
        case m_methodThatReturnsAndThrows__param_param(Parameter<Int>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodThatThrows, .m_methodThatThrows):
                return true 
            case (.m_methodThatReturnsAndThrows__param_param(let lhsParam), .m_methodThatReturnsAndThrows__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_methodThatThrows: return 0
            case let .m_methodThatReturnsAndThrows__param_param(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodThatReturnsAndThrows(param: Parameter<Int>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_methodThatReturnsAndThrows__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodThatThrows(willThrow: Error...) -> MethodStub {
            return Given(method: .m_methodThatThrows, products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatThrows(willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_methodThatThrows, products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
        public static func methodThatReturnsAndThrows(param: Parameter<Int>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_methodThatReturnsAndThrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func methodThatReturnsAndThrows(param: Parameter<Int>, willProduce: (StubberThrows<Bool>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_methodThatReturnsAndThrows__param_param(`param`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodThatThrows() -> Verify { return Verify(method: .m_methodThatThrows)}
        public static func methodThatReturnsAndThrows(param: Parameter<Int>) -> Verify { return Verify(method: .m_methodThatReturnsAndThrows__param_param(`param`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodThatThrows(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_methodThatThrows, performs: perform)
        }
        public static func methodThatReturnsAndThrows(param: Parameter<Int>, perform: @escaping (Int) -> Void) -> Perform {
            return Perform(method: .m_methodThatReturnsAndThrows__param_param(`param`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithTuples
open class ProtocolWithTuplesMock: ProtocolWithTuples, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func methodThatTakesTuple(tuple: (String,Int)) -> Int {
        let method = MethodType.m_methodThatTakesTuple__tuple_tuple(Parameter<(String,Int)>.value(`tuple`))
		let stringName = "methodThatTakesTuple(tuple: (String,Int))"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? ((String,Int)) -> Void)?(`tuple`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodThatTakesTuple__tuple_tuple(Parameter<(String,Int)>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodThatTakesTuple__tuple_tuple(let lhsTuple), .m_methodThatTakesTuple__tuple_tuple(let rhsTuple)):
                guard Parameter.compare(lhs: lhsTuple, rhs: rhsTuple, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodThatTakesTuple__tuple_tuple(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodThatTakesTuple(tuple: Parameter<(String,Int)>, willReturn: Int...) -> MethodStub {
            return Given(method: .m_methodThatTakesTuple__tuple_tuple(`tuple`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodThatTakesTuple(tuple: Parameter<(String,Int)>, willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_methodThatTakesTuple__tuple_tuple(`tuple`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodThatTakesTuple(tuple: Parameter<(String,Int)>) -> Verify { return Verify(method: .m_methodThatTakesTuple__tuple_tuple(`tuple`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodThatTakesTuple(tuple: Parameter<(String,Int)>, perform: @escaping ((String,Int)) -> Void) -> Perform {
            return Perform(method: .m_methodThatTakesTuple__tuple_tuple(`tuple`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ProtocolWithWhereAfterDefinition
open class ProtocolWithWhereAfterDefinitionMock<T>: ProtocolWithWhereAfterDefinition, Mock where T: Sequence, T.Element: Equatable {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var sequence: T {
		get {	registry.addInvocation(.p_sequence_get); return __p_sequence ?? registry.givenGetterValue(.p_sequence_get, "ProtocolWithWhereAfterDefinitionMock - stub value for sequence was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_sequence = newValue }
	}
	private var __p_sequence: (T)?





    open func methodWithType(t: T) -> Bool {
        let method = MethodType.m_methodWithType__t_t(Parameter<T>.value(`t`))
		let stringName = "methodWithType(t: T)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (T) -> Void)?(`t`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_methodWithType__t_t(Parameter<T>)
        case p_sequence_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodWithType__t_t(let lhsT), .m_methodWithType__t_t(let rhsT)):
                guard Parameter.compare(lhs: lhsT, rhs: rhsT, with: matcher) else { return false } 
                return true 
            case (.p_sequence_get,.p_sequence_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_methodWithType__t_t(p0): return p0.intValue
            case .p_sequence_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func sequence(getter defaultValue: T...) -> PropertyStub {
            return Given(method: .p_sequence_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func methodWithType(t: Parameter<T>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_methodWithType__t_t(`t`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithType(t: Parameter<T>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_methodWithType__t_t(`t`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodWithType(t: Parameter<T>) -> Verify { return Verify(method: .m_methodWithType__t_t(`t`))}
        public static var sequence: Verify { return Verify(method: .p_sequence_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodWithType(t: Parameter<T>, perform: @escaping (T) -> Void) -> Perform {
            return Perform(method: .m_methodWithType__t_t(`t`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SampleServiceType
open class SampleServiceTypeMock: SampleServiceType, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func serviceName() -> String {
        let method = MethodType.m_serviceName
		let stringName = "serviceName()"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func getPoint(from point: Point) -> Point {
        let method = MethodType.m_getPoint__from_point(Parameter<Point>.value(`point`))
		let stringName = "getPoint(from point: Point)"
		return registry.invoke(method, of: (Point).self, named: stringName) {
			($0 as? (Point) -> Void)?(`point`)
		}
    }

    open func getPoint(from tuple: (Float,Float)) -> Point {
        let method = MethodType.m_getPoint__from_tuple(Parameter<(Float,Float)>.value(`tuple`))
		let stringName = "getPoint(from tuple: (Float,Float))"
		return registry.invoke(method, of: (Point).self, named: stringName) {
			($0 as? ((Float,Float)) -> Void)?(`tuple`)
		}
    }

    open func similarMethodThatDiffersOnType(_ value: Float) -> Bool {
        let method = MethodType.m_similarMethodThatDiffersOnType__value_1(Parameter<Float>.value(`value`))
		let stringName = "similarMethodThatDiffersOnType(_ value: Float)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Float) -> Void)?(`value`)
		}
    }

    open func similarMethodThatDiffersOnType(_ value: Point) -> Bool {
        let method = MethodType.m_similarMethodThatDiffersOnType__value_2(Parameter<Point>.value(`value`))
		let stringName = "similarMethodThatDiffersOnType(_ value: Point)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Point) -> Void)?(`value`)
		}
    }

    open func methodWithTypedef(_ scalar: Scalar) {
        let method = MethodType.m_methodWithTypedef__scalar(Parameter<Scalar>.value(`scalar`))
		let stringName = "methodWithTypedef(_ scalar: Scalar)"
		return registry.invoke(method, named: stringName) {
			($0 as? (Scalar) -> Void)?(`scalar`)
		}
    }

    open func methodWithClosures(success function: LinearFunction) -> ClosureFabric {
        let method = MethodType.m_methodWithClosures__success_function_1(Parameter<LinearFunction>.value(`function`))
		let stringName = "methodWithClosures(success function: LinearFunction)"
		return registry.invoke(method, of: (ClosureFabric).self, named: stringName) {
			($0 as? (LinearFunction) -> Void)?(`function`)
		}
    }

    open func methodWithClosures(success function: ((Scalar,Scalar) -> Scalar)?) -> ((Int) -> Void) {
        let method = MethodType.m_methodWithClosures__success_function_2(Parameter<((Scalar,Scalar) -> Scalar)?>.value(`function`))
		let stringName = "methodWithClosures(success function: ((Scalar,Scalar) -> Scalar)?)"
		return registry.invoke(method, of: ((Int) -> Void).self, named: stringName) {
			($0 as? (((Scalar,Scalar) -> Scalar)?) -> Void)?(`function`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_serviceName
        case m_getPoint__from_point(Parameter<Point>)
        case m_getPoint__from_tuple(Parameter<(Float,Float)>)
        case m_similarMethodThatDiffersOnType__value_1(Parameter<Float>)
        case m_similarMethodThatDiffersOnType__value_2(Parameter<Point>)
        case m_methodWithTypedef__scalar(Parameter<Scalar>)
        case m_methodWithClosures__success_function_1(Parameter<LinearFunction>)
        case m_methodWithClosures__success_function_2(Parameter<((Scalar,Scalar) -> Scalar)?>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_serviceName, .m_serviceName):
                return true 
            case (.m_getPoint__from_point(let lhsPoint), .m_getPoint__from_point(let rhsPoint)):
                guard Parameter.compare(lhs: lhsPoint, rhs: rhsPoint, with: matcher) else { return false } 
                return true 
            case (.m_getPoint__from_tuple(let lhsTuple), .m_getPoint__from_tuple(let rhsTuple)):
                guard Parameter.compare(lhs: lhsTuple, rhs: rhsTuple, with: matcher) else { return false } 
                return true 
            case (.m_similarMethodThatDiffersOnType__value_1(let lhsValue), .m_similarMethodThatDiffersOnType__value_1(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_similarMethodThatDiffersOnType__value_2(let lhsValue), .m_similarMethodThatDiffersOnType__value_2(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            case (.m_methodWithTypedef__scalar(let lhsScalar), .m_methodWithTypedef__scalar(let rhsScalar)):
                guard Parameter.compare(lhs: lhsScalar, rhs: rhsScalar, with: matcher) else { return false } 
                return true 
            case (.m_methodWithClosures__success_function_1(let lhsFunction), .m_methodWithClosures__success_function_1(let rhsFunction)):
                guard Parameter.compare(lhs: lhsFunction, rhs: rhsFunction, with: matcher) else { return false } 
                return true 
            case (.m_methodWithClosures__success_function_2(let lhsFunction), .m_methodWithClosures__success_function_2(let rhsFunction)):
                guard Parameter.compare(lhs: lhsFunction, rhs: rhsFunction, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_serviceName: return 0
            case let .m_getPoint__from_point(p0): return p0.intValue
            case let .m_getPoint__from_tuple(p0): return p0.intValue
            case let .m_similarMethodThatDiffersOnType__value_1(p0): return p0.intValue
            case let .m_similarMethodThatDiffersOnType__value_2(p0): return p0.intValue
            case let .m_methodWithTypedef__scalar(p0): return p0.intValue
            case let .m_methodWithClosures__success_function_1(p0): return p0.intValue
            case let .m_methodWithClosures__success_function_2(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func serviceName(willReturn: String...) -> MethodStub {
            return Given(method: .m_serviceName, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getPoint(from point: Parameter<Point>, willReturn: Point...) -> MethodStub {
            return Given(method: .m_getPoint__from_point(`point`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getPoint(from tuple: Parameter<(Float,Float)>, willReturn: Point...) -> MethodStub {
            return Given(method: .m_getPoint__from_tuple(`tuple`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_similarMethodThatDiffersOnType__value_1(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_similarMethodThatDiffersOnType__value_2(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithClosures(success function: Parameter<LinearFunction>, willReturn: ClosureFabric...) -> MethodStub {
            return Given(method: .m_methodWithClosures__success_function_1(`function`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>, willReturn: (Int) -> Void...) -> MethodStub {
            return Given(method: .m_methodWithClosures__success_function_2(`function`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func serviceName(willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_serviceName, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
        public static func getPoint(from point: Parameter<Point>, willProduce: (Stubber<Point>) -> Void) -> MethodStub {
            let willReturn: [Point] = []
			let given: Given = { return Given(method: .m_getPoint__from_point(`point`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Point).self)
			willProduce(stubber)
			return given
        }
        public static func getPoint(from tuple: Parameter<(Float,Float)>, willProduce: (Stubber<Point>) -> Void) -> MethodStub {
            let willReturn: [Point] = []
			let given: Given = { return Given(method: .m_getPoint__from_tuple(`tuple`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Point).self)
			willProduce(stubber)
			return given
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_similarMethodThatDiffersOnType__value_1(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_similarMethodThatDiffersOnType__value_2(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithClosures(success function: Parameter<LinearFunction>, willProduce: (Stubber<ClosureFabric>) -> Void) -> MethodStub {
            let willReturn: [ClosureFabric] = []
			let given: Given = { return Given(method: .m_methodWithClosures__success_function_1(`function`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (ClosureFabric).self)
			willProduce(stubber)
			return given
        }
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>, willProduce: (Stubber<(Int) -> Void>) -> Void) -> MethodStub {
            let willReturn: [(Int) -> Void] = []
			let given: Given = { return Given(method: .m_methodWithClosures__success_function_2(`function`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ((Int) -> Void).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func serviceName() -> Verify { return Verify(method: .m_serviceName)}
        public static func getPoint(from point: Parameter<Point>) -> Verify { return Verify(method: .m_getPoint__from_point(`point`))}
        public static func getPoint(from tuple: Parameter<(Float,Float)>) -> Verify { return Verify(method: .m_getPoint__from_tuple(`tuple`))}
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>) -> Verify { return Verify(method: .m_similarMethodThatDiffersOnType__value_1(`value`))}
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>) -> Verify { return Verify(method: .m_similarMethodThatDiffersOnType__value_2(`value`))}
        public static func methodWithTypedef(_ scalar: Parameter<Scalar>) -> Verify { return Verify(method: .m_methodWithTypedef__scalar(`scalar`))}
        public static func methodWithClosures(success function: Parameter<LinearFunction>) -> Verify { return Verify(method: .m_methodWithClosures__success_function_1(`function`))}
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>) -> Verify { return Verify(method: .m_methodWithClosures__success_function_2(`function`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func serviceName(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_serviceName, performs: perform)
        }
        public static func getPoint(from point: Parameter<Point>, perform: @escaping (Point) -> Void) -> Perform {
            return Perform(method: .m_getPoint__from_point(`point`), performs: perform)
        }
        public static func getPoint(from tuple: Parameter<(Float,Float)>, perform: @escaping ((Float,Float)) -> Void) -> Perform {
            return Perform(method: .m_getPoint__from_tuple(`tuple`), performs: perform)
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Float>, perform: @escaping (Float) -> Void) -> Perform {
            return Perform(method: .m_similarMethodThatDiffersOnType__value_1(`value`), performs: perform)
        }
        public static func similarMethodThatDiffersOnType(_ value: Parameter<Point>, perform: @escaping (Point) -> Void) -> Perform {
            return Perform(method: .m_similarMethodThatDiffersOnType__value_2(`value`), performs: perform)
        }
        public static func methodWithTypedef(_ scalar: Parameter<Scalar>, perform: @escaping (Scalar) -> Void) -> Perform {
            return Perform(method: .m_methodWithTypedef__scalar(`scalar`), performs: perform)
        }
        public static func methodWithClosures(success function: Parameter<LinearFunction>, perform: @escaping (LinearFunction) -> Void) -> Perform {
            return Perform(method: .m_methodWithClosures__success_function_1(`function`), performs: perform)
        }
        public static func methodWithClosures(success function: Parameter<((Scalar,Scalar) -> Scalar)?>, perform: @escaping (((Scalar,Scalar) -> Scalar)?) -> Void) -> Perform {
            return Perform(method: .m_methodWithClosures__success_function_2(`function`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SelfConstrainedProtocol
open class SelfConstrainedProtocolMock: SelfConstrainedProtocol, Mock, StaticMock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    static var registry = MockRegistry<StaticMethodType, StaticGiven, StaticVerify, StaticPerform>()
    
    static var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    static var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    static var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    public typealias StaticPropertyStub = StaticGiven
    public typealias StaticMethodStub = StaticGiven
    
    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public static func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    public static func construct(param value: Int) -> Self {
        func _wrapped<__Self__>() -> __Self__ {
		let method = StaticMethodType.sm_construct__param_value(Parameter<Int>.value(`value`))
		let stringName = "construct(param value: Int)"
		return registry.invoke(method, of: (__Self__).self, named: stringName) {
			($0 as? (Int) -> Void)?(`value`)
		}
		}
		return _wrapped()
    }

    open func methodReturningSelf() -> Self {
        func _wrapped<__Self__>() -> __Self__ {
		let method = MethodType.m_methodReturningSelf
		let stringName = "methodReturningSelf()"
		return registry.invoke(method, of: (__Self__).self, named: stringName) {
			($0 as? () -> Void)?()
		}
		}
		return _wrapped()
    }

    open func compare(with other: SelfConstrainedProtocolMock) -> Bool {
        let method = MethodType.m_compare__with_other(Parameter<SelfConstrainedProtocolMock>.value(`other`))
		let stringName = "compare(with other: SelfConstrainedProtocolMock)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (SelfConstrainedProtocolMock) -> Void)?(`other`)
		}
    }

    open func genericMethodWithNestedSelf<T>(param: Int, second: T, other: (SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)) -> Self {
        func _wrapped<__Self__>() -> __Self__ {
		let method = MethodType.m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(Parameter<Int>.value(`param`), Parameter<T>.value(`second`).wrapAsGeneric(), Parameter<(SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)>.value(`other`))
		let stringName = "genericMethodWithNestedSelf<T>(param: Int, second: T, other: (SelfConstrainedProtocolMock,SelfConstrainedProtocolMock))"
		return registry.invoke(method, of: (__Self__).self, named: stringName) {
			($0 as? (Int, T, (SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)) -> Void)?(`param`, `second`, `other`)
		}
		}
		return _wrapped()
    }

    open func configure(with secret: String) throws -> Self {
        func _wrapped<__Self__>() throws -> __Self__ {
		let method = MethodType.m_configure__with_secret(Parameter<String>.value(`secret`))
		let stringName = "configure(with secret: String)"
		return try registry.invokeThrowing(method, of: (__Self__).self, named: stringName) {
			($0 as? (String) -> Void)?(`secret`)
		}
		}
		return try _wrapped()
    }

    public enum StaticMethodType: MethodTypeProtocol {
        case sm_construct__param_value(Parameter<Int>)

        public static func compareParameters(lhs: StaticMethodType, rhs: StaticMethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.sm_construct__param_value(let lhsValue), .sm_construct__param_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            }
        }

        public func intValue() -> Int {
            switch self {
                case let .sm_construct__param_value(p0): return p0.intValue
            }
        }
    }

    open class StaticGiven: StubbedMethod, GivenProtocol {
        public var method: StaticMethodType

        private init(method: StaticMethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func construct(param value: Parameter<Int>, willReturn: SelfConstrainedProtocolMock...) -> StaticMethodStub {
            return StaticGiven(method: .sm_construct__param_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func construct(param value: Parameter<Int>, willProduce: (Stubber<SelfConstrainedProtocolMock>) -> Void) -> StaticMethodStub {
            let willReturn: [SelfConstrainedProtocolMock] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_construct__param_value(`value`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (SelfConstrainedProtocolMock).self)
			willProduce(stubber)
			return given
        }
    }

    public struct StaticVerify: VerifyProtocol {
        public var method: StaticMethodType

        public static func construct(param value: Parameter<Int>) -> StaticVerify { return StaticVerify(method: .sm_construct__param_value(`value`))}
    }

    public struct StaticPerform: PerformProtocol {
        public var method: StaticMethodType
        public var performs: Any

        public static func construct(param value: Parameter<Int>, perform: @escaping (Int) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_construct__param_value(`value`), performs: perform)
        }
    }

    
    public enum MethodType: MethodTypeProtocol {
        case m_methodReturningSelf
        case m_compare__with_other(Parameter<SelfConstrainedProtocolMock>)
        case m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(Parameter<Int>, Parameter<GenericAttribute>, Parameter<(SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)>)
        case m_configure__with_secret(Parameter<String>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_methodReturningSelf, .m_methodReturningSelf):
                return true 
            case (.m_compare__with_other(let lhsOther), .m_compare__with_other(let rhsOther)):
                guard Parameter.compare(lhs: lhsOther, rhs: rhsOther, with: matcher) else { return false } 
                return true 
            case (.m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(let lhsParam, let lhsSecond, let lhsOther), .m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(let rhsParam, let rhsSecond, let rhsOther)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsSecond, rhs: rhsSecond, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsOther, rhs: rhsOther, with: matcher) else { return false } 
                return true 
            case (.m_configure__with_secret(let lhsSecret), .m_configure__with_secret(let rhsSecret)):
                guard Parameter.compare(lhs: lhsSecret, rhs: rhsSecret, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_methodReturningSelf: return 0
            case let .m_compare__with_other(p0): return p0.intValue
            case let .m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(p0, p1, p2): return p0.intValue + p1.intValue + p2.intValue
            case let .m_configure__with_secret(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func methodReturningSelf(willReturn: SelfConstrainedProtocolMock...) -> MethodStub {
            return Given(method: .m_methodReturningSelf, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func compare(with other: Parameter<SelfConstrainedProtocolMock>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_compare__with_other(`other`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func genericMethodWithNestedSelf<T>(param: Parameter<Int>, second: Parameter<T>, other: Parameter<(SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)>, willReturn: SelfConstrainedProtocolMock...) -> MethodStub {
            return Given(method: .m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(`param`, `second`.wrapAsGeneric(), `other`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func configure(with secret: Parameter<String>, willReturn: SelfConstrainedProtocolMock...) -> MethodStub {
            return Given(method: .m_configure__with_secret(`secret`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func methodReturningSelf(willProduce: (Stubber<SelfConstrainedProtocolMock>) -> Void) -> MethodStub {
            let willReturn: [SelfConstrainedProtocolMock] = []
			let given: Given = { return Given(method: .m_methodReturningSelf, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (SelfConstrainedProtocolMock).self)
			willProduce(stubber)
			return given
        }
        public static func compare(with other: Parameter<SelfConstrainedProtocolMock>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_compare__with_other(`other`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func genericMethodWithNestedSelf<T>(param: Parameter<Int>, second: Parameter<T>, other: Parameter<(SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)>, willProduce: (Stubber<SelfConstrainedProtocolMock>) -> Void) -> MethodStub {
            let willReturn: [SelfConstrainedProtocolMock] = []
			let given: Given = { return Given(method: .m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(`param`, `second`.wrapAsGeneric(), `other`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (SelfConstrainedProtocolMock).self)
			willProduce(stubber)
			return given
        }
        public static func configure(with secret: Parameter<String>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_configure__with_secret(`secret`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func configure(with secret: Parameter<String>, willProduce: (StubberThrows<SelfConstrainedProtocolMock>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_configure__with_secret(`secret`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (SelfConstrainedProtocolMock).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func methodReturningSelf() -> Verify { return Verify(method: .m_methodReturningSelf)}
        public static func compare(with other: Parameter<SelfConstrainedProtocolMock>) -> Verify { return Verify(method: .m_compare__with_other(`other`))}
        public static func genericMethodWithNestedSelf<T>(param: Parameter<Int>, second: Parameter<T>, other: Parameter<(SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)>) -> Verify { return Verify(method: .m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(`param`, `second`.wrapAsGeneric(), `other`))}
        public static func configure(with secret: Parameter<String>) -> Verify { return Verify(method: .m_configure__with_secret(`secret`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func methodReturningSelf(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_methodReturningSelf, performs: perform)
        }
        public static func compare(with other: Parameter<SelfConstrainedProtocolMock>, perform: @escaping (SelfConstrainedProtocolMock) -> Void) -> Perform {
            return Perform(method: .m_compare__with_other(`other`), performs: perform)
        }
        public static func genericMethodWithNestedSelf<T>(param: Parameter<Int>, second: Parameter<T>, other: Parameter<(SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)>, perform: @escaping (Int, T, (SelfConstrainedProtocolMock,SelfConstrainedProtocolMock)) -> Void) -> Perform {
            return Perform(method: .m_genericMethodWithNestedSelf__param_paramsecond_secondother_other(`param`, `second`.wrapAsGeneric(), `other`), performs: perform)
        }
        public static func configure(with secret: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_configure__with_secret(`secret`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }

    static public func given(_ method: StaticGiven) {
        registry.given(method)
    }

    static public func perform(_ method: StaticPerform) {
        registry.perform(method)
    }

    static public func verify(_ method: StaticVerify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - ShouldAllowNoStubDefined
open class ShouldAllowNoStubDefinedMock: ShouldAllowNoStubDefined, Mock, StaticMock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    static var registry = MockRegistry<StaticMethodType, StaticGiven, StaticVerify, StaticPerform>()
    
    static var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    static var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    static var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    public typealias StaticPropertyStub = StaticGiven
    public typealias StaticMethodStub = StaticGiven
    
    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public static func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var property: Int? {
		get {	registry.addInvocation(.p_property_get); return __p_property ?? registry.optionalGivenGetterValue(.p_property_get, "ShouldAllowNoStubDefinedMock - stub value for property was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_property = newValue }
	}
	private var __p_property: (Int)?


    public static var property: Int? {
		get {	ShouldAllowNoStubDefinedMock.registry.addInvocation(.p_property_get); return ShouldAllowNoStubDefinedMock.__p_property ?? registry.optionalGivenGetterValue(.p_property_get, "ShouldAllowNoStubDefinedMock - stub value for property was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	ShouldAllowNoStubDefinedMock.__p_property = newValue }
	}
	private static var __p_property: (Int)?




    public static func voidMethod(_ key: String) {
        let method = StaticMethodType.sm_voidMethod__key(Parameter<String>.value(`key`))
		let stringName = "voidMethod(_ key: String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    public static func throwingVoidMethod(_ key: String) throws {
        let method = StaticMethodType.sm_throwingVoidMethod__key(Parameter<String>.value(`key`))
		let stringName = "throwingVoidMethod(_ key: String)"
		return try registry.invokeThrowing(method, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    public static func optionalMethod(_ key: String) -> Int? {
        let method = StaticMethodType.sm_optionalMethod__key(Parameter<String>.value(`key`))
		let stringName = "optionalMethod(_ key: String)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    public static func optionalThrowingMethod(_ key: String) -> Int? {
        let method = StaticMethodType.sm_optionalThrowingMethod__key(Parameter<String>.value(`key`))
		let stringName = "optionalThrowingMethod(_ key: String)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    open func voidMethod(_ key: String) {
        let method = MethodType.m_voidMethod__key(Parameter<String>.value(`key`))
		let stringName = "voidMethod(_ key: String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    open func throwingVoidMethod(_ key: String) throws {
        let method = MethodType.m_throwingVoidMethod__key(Parameter<String>.value(`key`))
		let stringName = "throwingVoidMethod(_ key: String)"
		return try registry.invokeThrowing(method, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    open func optionalMethod(_ key: String) -> Int? {
        let method = MethodType.m_optionalMethod__key(Parameter<String>.value(`key`))
		let stringName = "optionalMethod(_ key: String)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    open func optionalThrowingMethod(_ key: String) -> Int? {
        let method = MethodType.m_optionalThrowingMethod__key(Parameter<String>.value(`key`))
		let stringName = "optionalThrowingMethod(_ key: String)"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? (String) -> Void)?(`key`)
		}
    }

    public subscript (_ x: Int) -> Int? {
		get {
			registry.addInvocation(.subscript_get_x(Parameter<Int>.value(`x`)))
			do {
				return try registry.methodReturnValue(.subscript_get_x(Parameter<Int>.value(`x`))).casted()
			} catch {
				return nil
			}
		}
	}

    public enum StaticMethodType: MethodTypeProtocol {
        case sm_voidMethod__key(Parameter<String>)
        case sm_throwingVoidMethod__key(Parameter<String>)
        case sm_optionalMethod__key(Parameter<String>)
        case sm_optionalThrowingMethod__key(Parameter<String>)
        case p_property_get

        public static func compareParameters(lhs: StaticMethodType, rhs: StaticMethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.sm_voidMethod__key(let lhsKey), .sm_voidMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.sm_throwingVoidMethod__key(let lhsKey), .sm_throwingVoidMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.sm_optionalMethod__key(let lhsKey), .sm_optionalMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.sm_optionalThrowingMethod__key(let lhsKey), .sm_optionalThrowingMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.p_property_get,.p_property_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
                case let .sm_voidMethod__key(p0): return p0.intValue
                case let .sm_throwingVoidMethod__key(p0): return p0.intValue
                case let .sm_optionalMethod__key(p0): return p0.intValue
                case let .sm_optionalThrowingMethod__key(p0): return p0.intValue
                case .p_property_get: return 0
            }
        }
    }

    open class StaticGiven: StubbedMethod, GivenProtocol {
        public var method: StaticMethodType

        private init(method: StaticMethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func property(getter defaultValue: Int?...) -> StaticPropertyStub {
            return StaticGiven(method: .p_property_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func optionalMethod(_ key: Parameter<String>, willReturn: Int?...) -> StaticMethodStub {
            return StaticGiven(method: .sm_optionalMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func optionalThrowingMethod(_ key: Parameter<String>, willReturn: Int?...) -> StaticMethodStub {
            return StaticGiven(method: .sm_optionalThrowingMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func optionalMethod(_ key: Parameter<String>, willProduce: (Stubber<Int?>) -> Void) -> StaticMethodStub {
            let willReturn: [Int?] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_optionalMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int?).self)
			willProduce(stubber)
			return given
        }
        public static func optionalThrowingMethod(_ key: Parameter<String>, willProduce: (Stubber<Int?>) -> Void) -> StaticMethodStub {
            let willReturn: [Int?] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_optionalThrowingMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int?).self)
			willProduce(stubber)
			return given
        }
        public static func throwingVoidMethod(_ key: Parameter<String>, willThrow: Error...) -> StaticMethodStub {
            return StaticGiven(method: .sm_throwingVoidMethod__key(`key`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func throwingVoidMethod(_ key: Parameter<String>, willProduce: (StubberThrows<Void>) -> Void) -> StaticMethodStub {
            let willThrow: [Error] = []
			let given: StaticGiven = { return StaticGiven(method: .sm_throwingVoidMethod__key(`key`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
    }

    public struct StaticVerify: VerifyProtocol {
        public var method: StaticMethodType

        public static func voidMethod(_ key: Parameter<String>) -> StaticVerify { return StaticVerify(method: .sm_voidMethod__key(`key`))}
        public static func throwingVoidMethod(_ key: Parameter<String>) -> StaticVerify { return StaticVerify(method: .sm_throwingVoidMethod__key(`key`))}
        public static func optionalMethod(_ key: Parameter<String>) -> StaticVerify { return StaticVerify(method: .sm_optionalMethod__key(`key`))}
        public static func optionalThrowingMethod(_ key: Parameter<String>) -> StaticVerify { return StaticVerify(method: .sm_optionalThrowingMethod__key(`key`))}
        public static var property: StaticVerify { return StaticVerify(method: .p_property_get) }
    }

    public struct StaticPerform: PerformProtocol {
        public var method: StaticMethodType
        public var performs: Any

        public static func voidMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_voidMethod__key(`key`), performs: perform)
        }
        public static func throwingVoidMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_throwingVoidMethod__key(`key`), performs: perform)
        }
        public static func optionalMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_optionalMethod__key(`key`), performs: perform)
        }
        public static func optionalThrowingMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> StaticPerform {
            return StaticPerform(method: .sm_optionalThrowingMethod__key(`key`), performs: perform)
        }
    }

    
    public enum MethodType: MethodTypeProtocol {
        case m_voidMethod__key(Parameter<String>)
        case m_throwingVoidMethod__key(Parameter<String>)
        case m_optionalMethod__key(Parameter<String>)
        case m_optionalThrowingMethod__key(Parameter<String>)
        case p_property_get
        case subscript_get_x(Parameter<Int>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_voidMethod__key(let lhsKey), .m_voidMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.m_throwingVoidMethod__key(let lhsKey), .m_throwingVoidMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.m_optionalMethod__key(let lhsKey), .m_optionalMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.m_optionalThrowingMethod__key(let lhsKey), .m_optionalThrowingMethod__key(let rhsKey)):
                guard Parameter.compare(lhs: lhsKey, rhs: rhsKey, with: matcher) else { return false } 
                return true 
            case (.p_property_get,.p_property_get): return true
            case (let .subscript_get_x(lhsX), let .subscript_get_x(rhsX)):
				guard Parameter.compare(lhs: lhsX, rhs: rhsX, with: matcher) else { return false }
				return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_voidMethod__key(p0): return p0.intValue
            case let .m_throwingVoidMethod__key(p0): return p0.intValue
            case let .m_optionalMethod__key(p0): return p0.intValue
            case let .m_optionalThrowingMethod__key(p0): return p0.intValue
            case .p_property_get: return 0
            case let .subscript_get_x(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func property(getter defaultValue: Int?...) -> PropertyStub {
            return Given(method: .p_property_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func optionalMethod(_ key: Parameter<String>, willReturn: Int?...) -> MethodStub {
            return Given(method: .m_optionalMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func optionalThrowingMethod(_ key: Parameter<String>, willReturn: Int?...) -> MethodStub {
            return Given(method: .m_optionalThrowingMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func optionalMethod(_ key: Parameter<String>, willProduce: (Stubber<Int?>) -> Void) -> MethodStub {
            let willReturn: [Int?] = []
			let given: Given = { return Given(method: .m_optionalMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int?).self)
			willProduce(stubber)
			return given
        }
        public static func optionalThrowingMethod(_ key: Parameter<String>, willProduce: (Stubber<Int?>) -> Void) -> MethodStub {
            let willReturn: [Int?] = []
			let given: Given = { return Given(method: .m_optionalThrowingMethod__key(`key`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int?).self)
			willProduce(stubber)
			return given
        }
        public static func `subscript`(_ x: Parameter<Int>, willReturn: Int?...) -> SubscriptStub {
            return Given(method: .subscript_get_x(`x`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func throwingVoidMethod(_ key: Parameter<String>, willThrow: Error...) -> MethodStub {
            return Given(method: .m_throwingVoidMethod__key(`key`), products: willThrow.map({ StubProduct.throw($0) }))
        }
        public static func throwingVoidMethod(_ key: Parameter<String>, willProduce: (StubberThrows<Void>) -> Void) -> MethodStub {
            let willThrow: [Error] = []
			let given: Given = { return Given(method: .m_throwingVoidMethod__key(`key`), products: willThrow.map({ StubProduct.throw($0) })) }()
			let stubber = given.stubThrows(for: (Void).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func voidMethod(_ key: Parameter<String>) -> Verify { return Verify(method: .m_voidMethod__key(`key`))}
        public static func throwingVoidMethod(_ key: Parameter<String>) -> Verify { return Verify(method: .m_throwingVoidMethod__key(`key`))}
        public static func optionalMethod(_ key: Parameter<String>) -> Verify { return Verify(method: .m_optionalMethod__key(`key`))}
        public static func optionalThrowingMethod(_ key: Parameter<String>) -> Verify { return Verify(method: .m_optionalThrowingMethod__key(`key`))}
        public static var property: Verify { return Verify(method: .p_property_get) }
        public static func `subscript`(_ x: Parameter<Int>) -> Verify { return Verify(method: .subscript_get_x(`x`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func voidMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_voidMethod__key(`key`), performs: perform)
        }
        public static func throwingVoidMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_throwingVoidMethod__key(`key`), performs: perform)
        }
        public static func optionalMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_optionalMethod__key(`key`), performs: perform)
        }
        public static func optionalThrowingMethod(_ key: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_optionalThrowingMethod__key(`key`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }

    static public func given(_ method: StaticGiven) {
        registry.given(method)
    }

    static public func perform(_ method: StaticPerform) {
        registry.perform(method)
    }

    static public func verify(_ method: StaticVerify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SimpleProtocolThatInheritsOtherProtocols
open class SimpleProtocolThatInheritsOtherProtocolsMock: SimpleProtocolThatInheritsOtherProtocols, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var property: String {
		get {	registry.addInvocation(.p_property_get); return __p_property ?? registry.givenGetterValue(.p_property_get, "SimpleProtocolThatInheritsOtherProtocolsMock - stub value for property was not defined") }
		set {	registry.addInvocation(.p_property_set(.value(newValue))); __p_property = newValue }
	}
	private var __p_property: (String)?

    public var weakProperty: AnyObject! {
		get {	registry.addInvocation(.p_weakProperty_get); return __p_weakProperty ?? registry.optionalGivenGetterValue(.p_weakProperty_get, "SimpleProtocolThatInheritsOtherProtocolsMock - stub value for weakProperty was not defined") }
		set {	registry.addInvocation(.p_weakProperty_set(.value(newValue))); __p_weakProperty = newValue }
	}
	private var __p_weakProperty: (AnyObject)?

    public var propertyGetOnly: String {
		get {	registry.addInvocation(.p_propertyGetOnly_get); return __p_propertyGetOnly ?? registry.givenGetterValue(.p_propertyGetOnly_get, "SimpleProtocolThatInheritsOtherProtocolsMock - stub value for propertyGetOnly was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_propertyGetOnly = newValue }
	}
	private var __p_propertyGetOnly: (String)?

    public var propertyOptional: Int? {
		get {	registry.addInvocation(.p_propertyOptional_get); return __p_propertyOptional ?? registry.optionalGivenGetterValue(.p_propertyOptional_get, "SimpleProtocolThatInheritsOtherProtocolsMock - stub value for propertyOptional was not defined") }
		set {	registry.addInvocation(.p_propertyOptional_set(.value(newValue))); __p_propertyOptional = newValue }
	}
	private var __p_propertyOptional: (Int)?

    public var propertyImplicit: Int! {
		get {	registry.addInvocation(.p_propertyImplicit_get); return __p_propertyImplicit ?? registry.optionalGivenGetterValue(.p_propertyImplicit_get, "SimpleProtocolThatInheritsOtherProtocolsMock - stub value for propertyImplicit was not defined") }
		set {	registry.addInvocation(.p_propertyImplicit_set(.value(newValue))); __p_propertyImplicit = newValue }
	}
	private var __p_propertyImplicit: (Int)?





    open func simpleMethod() {
        let method = MethodType.m_simpleMethod
		let stringName = "simpleMethod()"
		return registry.invoke(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func simpleMehtodThatReturns() -> Int {
        let method = MethodType.m_simpleMehtodThatReturns
		let stringName = "simpleMehtodThatReturns()"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func simpleMehtodThatReturns(param: String) -> String {
        let method = MethodType.m_simpleMehtodThatReturns__param_param(Parameter<String>.value(`param`))
		let stringName = "simpleMehtodThatReturns(param: String)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (String) -> Void)?(`param`)
		}
    }

    open func simpleMehtodThatReturns(optionalParam: String?) -> String? {
        let method = MethodType.m_simpleMehtodThatReturns__optionalParam_optionalParam(Parameter<String?>.value(`optionalParam`))
		let stringName = "simpleMehtodThatReturns(optionalParam: String?)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (String?) -> Void)?(`optionalParam`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_simpleMethod
        case m_simpleMehtodThatReturns
        case m_simpleMehtodThatReturns__param_param(Parameter<String>)
        case m_simpleMehtodThatReturns__optionalParam_optionalParam(Parameter<String?>)
        case p_property_get
		case p_property_set(Parameter<String>)
        case p_weakProperty_get
		case p_weakProperty_set(Parameter<AnyObject?>)
        case p_propertyGetOnly_get
        case p_propertyOptional_get
		case p_propertyOptional_set(Parameter<Int?>)
        case p_propertyImplicit_get
		case p_propertyImplicit_set(Parameter<Int?>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_simpleMethod, .m_simpleMethod):
                return true 
            case (.m_simpleMehtodThatReturns, .m_simpleMehtodThatReturns):
                return true 
            case (.m_simpleMehtodThatReturns__param_param(let lhsParam), .m_simpleMehtodThatReturns__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.m_simpleMehtodThatReturns__optionalParam_optionalParam(let lhsOptionalparam), .m_simpleMehtodThatReturns__optionalParam_optionalParam(let rhsOptionalparam)):
                guard Parameter.compare(lhs: lhsOptionalparam, rhs: rhsOptionalparam, with: matcher) else { return false } 
                return true 
            case (.p_property_get,.p_property_get): return true
			case (.p_property_set(let left),.p_property_set(let right)): return Parameter<String>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_weakProperty_get,.p_weakProperty_get): return true
			case (.p_weakProperty_set(let left),.p_weakProperty_set(let right)): return Parameter<AnyObject?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_propertyGetOnly_get,.p_propertyGetOnly_get): return true
            case (.p_propertyOptional_get,.p_propertyOptional_get): return true
			case (.p_propertyOptional_set(let left),.p_propertyOptional_set(let right)): return Parameter<Int?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_propertyImplicit_get,.p_propertyImplicit_get): return true
			case (.p_propertyImplicit_set(let left),.p_propertyImplicit_set(let right)): return Parameter<Int?>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_simpleMethod: return 0
            case .m_simpleMehtodThatReturns: return 0
            case let .m_simpleMehtodThatReturns__param_param(p0): return p0.intValue
            case let .m_simpleMehtodThatReturns__optionalParam_optionalParam(p0): return p0.intValue
            case .p_property_get: return 0
			case .p_property_set(let newValue): return newValue.intValue
            case .p_weakProperty_get: return 0
			case .p_weakProperty_set(let newValue): return newValue.intValue
            case .p_propertyGetOnly_get: return 0
            case .p_propertyOptional_get: return 0
			case .p_propertyOptional_set(let newValue): return newValue.intValue
            case .p_propertyImplicit_get: return 0
			case .p_propertyImplicit_set(let newValue): return newValue.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func property(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_property_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func weakProperty(getter defaultValue: AnyObject?...) -> PropertyStub {
            return Given(method: .p_weakProperty_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func propertyGetOnly(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_propertyGetOnly_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func propertyOptional(getter defaultValue: Int?...) -> PropertyStub {
            return Given(method: .p_propertyOptional_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func propertyImplicit(getter defaultValue: Int?...) -> PropertyStub {
            return Given(method: .p_propertyImplicit_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func simpleMehtodThatReturns(willReturn: Int...) -> MethodStub {
            return Given(method: .m_simpleMehtodThatReturns, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func simpleMehtodThatReturns(param: Parameter<String>, willReturn: String...) -> MethodStub {
            return Given(method: .m_simpleMehtodThatReturns__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>, willReturn: String?...) -> MethodStub {
            return Given(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func simpleMehtodThatReturns(willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_simpleMehtodThatReturns, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func simpleMehtodThatReturns(param: Parameter<String>, willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_simpleMehtodThatReturns__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>, willProduce: (Stubber<String?>) -> Void) -> MethodStub {
            let willReturn: [String?] = []
			let given: Given = { return Given(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func simpleMethod() -> Verify { return Verify(method: .m_simpleMethod)}
        public static func simpleMehtodThatReturns() -> Verify { return Verify(method: .m_simpleMehtodThatReturns)}
        public static func simpleMehtodThatReturns(param: Parameter<String>) -> Verify { return Verify(method: .m_simpleMehtodThatReturns__param_param(`param`))}
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>) -> Verify { return Verify(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`))}
        public static var property: Verify { return Verify(method: .p_property_get) }
		public static func property(set newValue: Parameter<String>) -> Verify { return Verify(method: .p_property_set(newValue)) }
        public static var weakProperty: Verify { return Verify(method: .p_weakProperty_get) }
		public static func weakProperty(set newValue: Parameter<AnyObject?>) -> Verify { return Verify(method: .p_weakProperty_set(newValue)) }
        public static var propertyGetOnly: Verify { return Verify(method: .p_propertyGetOnly_get) }
        public static var propertyOptional: Verify { return Verify(method: .p_propertyOptional_get) }
		public static func propertyOptional(set newValue: Parameter<Int?>) -> Verify { return Verify(method: .p_propertyOptional_set(newValue)) }
        public static var propertyImplicit: Verify { return Verify(method: .p_propertyImplicit_get) }
		public static func propertyImplicit(set newValue: Parameter<Int?>) -> Verify { return Verify(method: .p_propertyImplicit_set(newValue)) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func simpleMethod(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_simpleMethod, performs: perform)
        }
        public static func simpleMehtodThatReturns(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_simpleMehtodThatReturns, performs: perform)
        }
        public static func simpleMehtodThatReturns(param: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_simpleMehtodThatReturns__param_param(`param`), performs: perform)
        }
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>, perform: @escaping (String?) -> Void) -> Perform {
            return Perform(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SimpleProtocolUsingCollections
open class SimpleProtocolUsingCollectionsMock: SimpleProtocolUsingCollections, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func getArray() -> [Int] {
        let method = MethodType.m_getArray
		let stringName = "getArray()"
		return registry.invoke(method, of: ([Int]).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func map(array: [String], param: Int) -> [Int: String] {
        let method = MethodType.m_map__array_arrayparam_param(Parameter<[String]>.value(`array`), Parameter<Int>.value(`param`))
		let stringName = "map(array: [String], param: Int)"
		return registry.invoke(method, of: ([Int: String]).self, named: stringName) {
			($0 as? ([String], Int) -> Void)?(`array`, `param`)
		}
    }

    open func use(dictionary: [Int: String]) -> [Int: String] {
        let method = MethodType.m_use__dictionary_dictionary(Parameter<[Int: String]>.value(`dictionary`))
		let stringName = "use(dictionary: [Int: String])"
		return registry.invoke(method, of: ([Int: String]).self, named: stringName) {
			($0 as? ([Int: String]) -> Void)?(`dictionary`)
		}
    }

    open func verify(set: Set<Int>) -> Bool {
        let method = MethodType.m_verify__set_set(Parameter<Set<Int>>.value(`set`))
		let stringName = "verify(set: Set<Int>)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Set<Int>) -> Void)?(`set`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_getArray
        case m_map__array_arrayparam_param(Parameter<[String]>, Parameter<Int>)
        case m_use__dictionary_dictionary(Parameter<[Int: String]>)
        case m_verify__set_set(Parameter<Set<Int>>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_getArray, .m_getArray):
                return true 
            case (.m_map__array_arrayparam_param(let lhsArray, let lhsParam), .m_map__array_arrayparam_param(let rhsArray, let rhsParam)):
                guard Parameter.compare(lhs: lhsArray, rhs: rhsArray, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.m_use__dictionary_dictionary(let lhsDictionary), .m_use__dictionary_dictionary(let rhsDictionary)):
                guard Parameter.compare(lhs: lhsDictionary, rhs: rhsDictionary, with: matcher) else { return false } 
                return true 
            case (.m_verify__set_set(let lhsSet), .m_verify__set_set(let rhsSet)):
                guard Parameter.compare(lhs: lhsSet, rhs: rhsSet, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_getArray: return 0
            case let .m_map__array_arrayparam_param(p0, p1): return p0.intValue + p1.intValue
            case let .m_use__dictionary_dictionary(p0): return p0.intValue
            case let .m_verify__set_set(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func getArray(willReturn: [Int]...) -> MethodStub {
            return Given(method: .m_getArray, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func map(array: Parameter<[String]>, param: Parameter<Int>, willReturn: [Int: String]...) -> MethodStub {
            return Given(method: .m_map__array_arrayparam_param(`array`, `param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func use(dictionary: Parameter<[Int: String]>, willReturn: [Int: String]...) -> MethodStub {
            return Given(method: .m_use__dictionary_dictionary(`dictionary`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func verify(set: Parameter<Set<Int>>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_verify__set_set(`set`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func getArray(willProduce: (Stubber<[Int]>) -> Void) -> MethodStub {
            let willReturn: [[Int]] = []
			let given: Given = { return Given(method: .m_getArray, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([Int]).self)
			willProduce(stubber)
			return given
        }
        public static func map(array: Parameter<[String]>, param: Parameter<Int>, willProduce: (Stubber<[Int: String]>) -> Void) -> MethodStub {
            let willReturn: [[Int: String]] = []
			let given: Given = { return Given(method: .m_map__array_arrayparam_param(`array`, `param`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([Int: String]).self)
			willProduce(stubber)
			return given
        }
        public static func use(dictionary: Parameter<[Int: String]>, willProduce: (Stubber<[Int: String]>) -> Void) -> MethodStub {
            let willReturn: [[Int: String]] = []
			let given: Given = { return Given(method: .m_use__dictionary_dictionary(`dictionary`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([Int: String]).self)
			willProduce(stubber)
			return given
        }
        public static func verify(set: Parameter<Set<Int>>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_verify__set_set(`set`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func getArray() -> Verify { return Verify(method: .m_getArray)}
        public static func map(array: Parameter<[String]>, param: Parameter<Int>) -> Verify { return Verify(method: .m_map__array_arrayparam_param(`array`, `param`))}
        public static func use(dictionary: Parameter<[Int: String]>) -> Verify { return Verify(method: .m_use__dictionary_dictionary(`dictionary`))}
        public static func verify(set: Parameter<Set<Int>>) -> Verify { return Verify(method: .m_verify__set_set(`set`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func getArray(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_getArray, performs: perform)
        }
        public static func map(array: Parameter<[String]>, param: Parameter<Int>, perform: @escaping ([String], Int) -> Void) -> Perform {
            return Perform(method: .m_map__array_arrayparam_param(`array`, `param`), performs: perform)
        }
        public static func use(dictionary: Parameter<[Int: String]>, perform: @escaping ([Int: String]) -> Void) -> Perform {
            return Perform(method: .m_use__dictionary_dictionary(`dictionary`), performs: perform)
        }
        public static func verify(set: Parameter<Set<Int>>, perform: @escaping (Set<Int>) -> Void) -> Perform {
            return Perform(method: .m_verify__set_set(`set`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SimpleProtocolWithBothMethodsAndProperties
open class SimpleProtocolWithBothMethodsAndPropertiesMock: SimpleProtocolWithBothMethodsAndProperties, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var property: String {
		get {	registry.addInvocation(.p_property_get); return __p_property ?? registry.givenGetterValue(.p_property_get, "SimpleProtocolWithBothMethodsAndPropertiesMock - stub value for property was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_property = newValue }
	}
	private var __p_property: (String)?





    open func simpleMethod() -> String {
        let method = MethodType.m_simpleMethod
		let stringName = "simpleMethod()"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_simpleMethod
        case p_property_get

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_simpleMethod, .m_simpleMethod):
                return true 
            case (.p_property_get,.p_property_get): return true
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_simpleMethod: return 0
            case .p_property_get: return 0
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func property(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_property_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        public static func simpleMethod(willReturn: String...) -> MethodStub {
            return Given(method: .m_simpleMethod, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func simpleMethod(willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_simpleMethod, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func simpleMethod() -> Verify { return Verify(method: .m_simpleMethod)}
        public static var property: Verify { return Verify(method: .p_property_get) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func simpleMethod(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_simpleMethod, performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SimpleProtocolWithMethods
open class SimpleProtocolWithMethodsMock: SimpleProtocolWithMethods, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func simpleMethod() {
        let method = MethodType.m_simpleMethod
		let stringName = "simpleMethod()"
		return registry.invoke(method, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func simpleMehtodThatReturns() -> Int {
        let method = MethodType.m_simpleMehtodThatReturns
		let stringName = "simpleMehtodThatReturns()"
		return registry.invoke(method, of: (Int).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func simpleMehtodThatReturns(param: String) -> String {
        let method = MethodType.m_simpleMehtodThatReturns__param_param(Parameter<String>.value(`param`))
		let stringName = "simpleMehtodThatReturns(param: String)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (String) -> Void)?(`param`)
		}
    }

    open func simpleMehtodThatReturns(optionalParam: String?) -> String? {
        let method = MethodType.m_simpleMehtodThatReturns__optionalParam_optionalParam(Parameter<String?>.value(`optionalParam`))
		let stringName = "simpleMehtodThatReturns(optionalParam: String?)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (String?) -> Void)?(`optionalParam`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_simpleMethod
        case m_simpleMehtodThatReturns
        case m_simpleMehtodThatReturns__param_param(Parameter<String>)
        case m_simpleMehtodThatReturns__optionalParam_optionalParam(Parameter<String?>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_simpleMethod, .m_simpleMethod):
                return true 
            case (.m_simpleMehtodThatReturns, .m_simpleMehtodThatReturns):
                return true 
            case (.m_simpleMehtodThatReturns__param_param(let lhsParam), .m_simpleMehtodThatReturns__param_param(let rhsParam)):
                guard Parameter.compare(lhs: lhsParam, rhs: rhsParam, with: matcher) else { return false } 
                return true 
            case (.m_simpleMehtodThatReturns__optionalParam_optionalParam(let lhsOptionalparam), .m_simpleMehtodThatReturns__optionalParam_optionalParam(let rhsOptionalparam)):
                guard Parameter.compare(lhs: lhsOptionalparam, rhs: rhsOptionalparam, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .m_simpleMethod: return 0
            case .m_simpleMehtodThatReturns: return 0
            case let .m_simpleMehtodThatReturns__param_param(p0): return p0.intValue
            case let .m_simpleMehtodThatReturns__optionalParam_optionalParam(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func simpleMehtodThatReturns(willReturn: Int...) -> MethodStub {
            return Given(method: .m_simpleMehtodThatReturns, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func simpleMehtodThatReturns(param: Parameter<String>, willReturn: String...) -> MethodStub {
            return Given(method: .m_simpleMehtodThatReturns__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>, willReturn: String?...) -> MethodStub {
            return Given(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func simpleMehtodThatReturns(willProduce: (Stubber<Int>) -> Void) -> MethodStub {
            let willReturn: [Int] = []
			let given: Given = { return Given(method: .m_simpleMehtodThatReturns, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Int).self)
			willProduce(stubber)
			return given
        }
        public static func simpleMehtodThatReturns(param: Parameter<String>, willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_simpleMehtodThatReturns__param_param(`param`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>, willProduce: (Stubber<String?>) -> Void) -> MethodStub {
            let willReturn: [String?] = []
			let given: Given = { return Given(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func simpleMethod() -> Verify { return Verify(method: .m_simpleMethod)}
        public static func simpleMehtodThatReturns() -> Verify { return Verify(method: .m_simpleMehtodThatReturns)}
        public static func simpleMehtodThatReturns(param: Parameter<String>) -> Verify { return Verify(method: .m_simpleMehtodThatReturns__param_param(`param`))}
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>) -> Verify { return Verify(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func simpleMethod(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_simpleMethod, performs: perform)
        }
        public static func simpleMehtodThatReturns(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_simpleMehtodThatReturns, performs: perform)
        }
        public static func simpleMehtodThatReturns(param: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_simpleMehtodThatReturns__param_param(`param`), performs: perform)
        }
        public static func simpleMehtodThatReturns(optionalParam: Parameter<String?>, perform: @escaping (String?) -> Void) -> Perform {
            return Perform(method: .m_simpleMehtodThatReturns__optionalParam_optionalParam(`optionalParam`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SimpleProtocolWithProperties
open class SimpleProtocolWithPropertiesMock: SimpleProtocolWithProperties, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }

    public var property: String {
		get {	registry.addInvocation(.p_property_get); return __p_property ?? registry.givenGetterValue(.p_property_get, "SimpleProtocolWithPropertiesMock - stub value for property was not defined") }
		set {	registry.addInvocation(.p_property_set(.value(newValue))); __p_property = newValue }
	}
	private var __p_property: (String)?

    public var weakProperty: AnyObject! {
		get {	registry.addInvocation(.p_weakProperty_get); return __p_weakProperty ?? registry.optionalGivenGetterValue(.p_weakProperty_get, "SimpleProtocolWithPropertiesMock - stub value for weakProperty was not defined") }
		set {	registry.addInvocation(.p_weakProperty_set(.value(newValue))); __p_weakProperty = newValue }
	}
	private var __p_weakProperty: (AnyObject)?

    public var propertyGetOnly: String {
		get {	registry.addInvocation(.p_propertyGetOnly_get); return __p_propertyGetOnly ?? registry.givenGetterValue(.p_propertyGetOnly_get, "SimpleProtocolWithPropertiesMock - stub value for propertyGetOnly was not defined") }
		@available(*, deprecated, message: "Using setters on readonly variables is deprecated, and will be removed in 3.1. Use Given to define stubbed property return value.")
		set {	__p_propertyGetOnly = newValue }
	}
	private var __p_propertyGetOnly: (String)?

    public var propertyOptional: Int? {
		get {	registry.addInvocation(.p_propertyOptional_get); return __p_propertyOptional ?? registry.optionalGivenGetterValue(.p_propertyOptional_get, "SimpleProtocolWithPropertiesMock - stub value for propertyOptional was not defined") }
		set {	registry.addInvocation(.p_propertyOptional_set(.value(newValue))); __p_propertyOptional = newValue }
	}
	private var __p_propertyOptional: (Int)?

    public var propertyImplicit: Int! {
		get {	registry.addInvocation(.p_propertyImplicit_get); return __p_propertyImplicit ?? registry.optionalGivenGetterValue(.p_propertyImplicit_get, "SimpleProtocolWithPropertiesMock - stub value for propertyImplicit was not defined") }
		set {	registry.addInvocation(.p_propertyImplicit_set(.value(newValue))); __p_propertyImplicit = newValue }
	}
	private var __p_propertyImplicit: (Int)?






    public enum MethodType: MethodTypeProtocol {
        case p_property_get
		case p_property_set(Parameter<String>)
        case p_weakProperty_get
		case p_weakProperty_set(Parameter<AnyObject?>)
        case p_propertyGetOnly_get
        case p_propertyOptional_get
		case p_propertyOptional_set(Parameter<Int?>)
        case p_propertyImplicit_get
		case p_propertyImplicit_set(Parameter<Int?>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.p_property_get,.p_property_get): return true
			case (.p_property_set(let left),.p_property_set(let right)): return Parameter<String>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_weakProperty_get,.p_weakProperty_get): return true
			case (.p_weakProperty_set(let left),.p_weakProperty_set(let right)): return Parameter<AnyObject?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_propertyGetOnly_get,.p_propertyGetOnly_get): return true
            case (.p_propertyOptional_get,.p_propertyOptional_get): return true
			case (.p_propertyOptional_set(let left),.p_propertyOptional_set(let right)): return Parameter<Int?>.compare(lhs: left, rhs: right, with: matcher)
            case (.p_propertyImplicit_get,.p_propertyImplicit_get): return true
			case (.p_propertyImplicit_set(let left),.p_propertyImplicit_set(let right)): return Parameter<Int?>.compare(lhs: left, rhs: right, with: matcher)
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case .p_property_get: return 0
			case .p_property_set(let newValue): return newValue.intValue
            case .p_weakProperty_get: return 0
			case .p_weakProperty_set(let newValue): return newValue.intValue
            case .p_propertyGetOnly_get: return 0
            case .p_propertyOptional_get: return 0
			case .p_propertyOptional_set(let newValue): return newValue.intValue
            case .p_propertyImplicit_get: return 0
			case .p_propertyImplicit_set(let newValue): return newValue.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func property(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_property_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func weakProperty(getter defaultValue: AnyObject?...) -> PropertyStub {
            return Given(method: .p_weakProperty_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func propertyGetOnly(getter defaultValue: String...) -> PropertyStub {
            return Given(method: .p_propertyGetOnly_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func propertyOptional(getter defaultValue: Int?...) -> PropertyStub {
            return Given(method: .p_propertyOptional_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func propertyImplicit(getter defaultValue: Int?...) -> PropertyStub {
            return Given(method: .p_propertyImplicit_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static var property: Verify { return Verify(method: .p_property_get) }
		public static func property(set newValue: Parameter<String>) -> Verify { return Verify(method: .p_property_set(newValue)) }
        public static var weakProperty: Verify { return Verify(method: .p_weakProperty_get) }
		public static func weakProperty(set newValue: Parameter<AnyObject?>) -> Verify { return Verify(method: .p_weakProperty_set(newValue)) }
        public static var propertyGetOnly: Verify { return Verify(method: .p_propertyGetOnly_get) }
        public static var propertyOptional: Verify { return Verify(method: .p_propertyOptional_get) }
		public static func propertyOptional(set newValue: Parameter<Int?>) -> Verify { return Verify(method: .p_propertyOptional_set(newValue)) }
        public static var propertyImplicit: Verify { return Verify(method: .p_propertyImplicit_get) }
		public static func propertyImplicit(set newValue: Parameter<Int?>) -> Verify { return Verify(method: .p_propertyImplicit_set(newValue)) }
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SuggestionProtocol
open class SuggestionProtocolMock: SuggestionProtocol, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }






    public struct MethodType: MethodTypeProtocol {
        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool { return true }
        public func intValue() -> Int { return 0 }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SuggestionRepository
open class SuggestionRepositoryMock: SuggestionRepository, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given
    public typealias Entity = Suggestion

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func save(entity: Entity) -> Bool {
        let method = MethodType.m_save__entity_entity(Parameter<Entity>.value(`entity`))
		let stringName = "save(entity: Entity)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Entity) -> Void)?(`entity`)
		}
    }

    open func save(entities: [Entity]) -> Bool {
        let method = MethodType.m_save__entities_entities(Parameter<[Entity]>.value(`entities`))
		let stringName = "save(entities: [Entity])"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? ([Entity]) -> Void)?(`entities`)
		}
    }

    open func find(    where predicate: NSPredicate,    sortedBy sortDescriptors: [NSSortDescriptor]) -> [Entity] {
        let method = MethodType.m_find__where_predicatesortedBy_sortDescriptors(Parameter<NSPredicate>.value(`predicate`), Parameter<[NSSortDescriptor]>.value(`sortDescriptors`))
		let stringName = "find(    where predicate: NSPredicate,    sortedBy sortDescriptors: [NSSortDescriptor])"
		return registry.invoke(method, of: ([Entity]).self, named: stringName) {
			($0 as? (NSPredicate, [NSSortDescriptor]) -> Void)?(`predicate`, `sortDescriptors`)
		}
    }

    open func findOne(where predicate: NSPredicate) -> Entity {
        let method = MethodType.m_findOne__where_predicate(Parameter<NSPredicate>.value(`predicate`))
		let stringName = "findOne(where predicate: NSPredicate)"
		return registry.invoke(method, of: (Entity).self, named: stringName) {
			($0 as? (NSPredicate) -> Void)?(`predicate`)
		}
    }

    open func delete(entity: Entity) -> Bool {
        let method = MethodType.m_delete__entity_entity(Parameter<Entity>.value(`entity`))
		let stringName = "delete(entity: Entity)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Entity) -> Void)?(`entity`)
		}
    }

    open func delete(entities: [Entity]) -> Bool {
        let method = MethodType.m_delete__entities_entities(Parameter<[Entity]>.value(`entities`))
		let stringName = "delete(entities: [Entity])"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? ([Entity]) -> Void)?(`entities`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_save__entity_entity(Parameter<Entity>)
        case m_save__entities_entities(Parameter<[Entity]>)
        case m_find__where_predicatesortedBy_sortDescriptors(Parameter<NSPredicate>, Parameter<[NSSortDescriptor]>)
        case m_findOne__where_predicate(Parameter<NSPredicate>)
        case m_delete__entity_entity(Parameter<Entity>)
        case m_delete__entities_entities(Parameter<[Entity]>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_save__entity_entity(let lhsEntity), .m_save__entity_entity(let rhsEntity)):
                guard Parameter.compare(lhs: lhsEntity, rhs: rhsEntity, with: matcher) else { return false } 
                return true 
            case (.m_save__entities_entities(let lhsEntities), .m_save__entities_entities(let rhsEntities)):
                guard Parameter.compare(lhs: lhsEntities, rhs: rhsEntities, with: matcher) else { return false } 
                return true 
            case (.m_find__where_predicatesortedBy_sortDescriptors(let lhsPredicate, let lhsSortdescriptors), .m_find__where_predicatesortedBy_sortDescriptors(let rhsPredicate, let rhsSortdescriptors)):
                guard Parameter.compare(lhs: lhsPredicate, rhs: rhsPredicate, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsSortdescriptors, rhs: rhsSortdescriptors, with: matcher) else { return false } 
                return true 
            case (.m_findOne__where_predicate(let lhsPredicate), .m_findOne__where_predicate(let rhsPredicate)):
                guard Parameter.compare(lhs: lhsPredicate, rhs: rhsPredicate, with: matcher) else { return false } 
                return true 
            case (.m_delete__entity_entity(let lhsEntity), .m_delete__entity_entity(let rhsEntity)):
                guard Parameter.compare(lhs: lhsEntity, rhs: rhsEntity, with: matcher) else { return false } 
                return true 
            case (.m_delete__entities_entities(let lhsEntities), .m_delete__entities_entities(let rhsEntities)):
                guard Parameter.compare(lhs: lhsEntities, rhs: rhsEntities, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_save__entity_entity(p0): return p0.intValue
            case let .m_save__entities_entities(p0): return p0.intValue
            case let .m_find__where_predicatesortedBy_sortDescriptors(p0, p1): return p0.intValue + p1.intValue
            case let .m_findOne__where_predicate(p0): return p0.intValue
            case let .m_delete__entity_entity(p0): return p0.intValue
            case let .m_delete__entities_entities(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func save(entity: Parameter<Entity>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_save__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func save(entities: Parameter<[Entity]>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_save__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>, willReturn: [Entity]...) -> MethodStub {
            return Given(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func findOne(where predicate: Parameter<NSPredicate>, willReturn: Entity...) -> MethodStub {
            return Given(method: .m_findOne__where_predicate(`predicate`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func delete(entity: Parameter<Entity>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_delete__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func delete(entities: Parameter<[Entity]>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_delete__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func save(entity: Parameter<Entity>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_save__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func save(entities: Parameter<[Entity]>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_save__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>, willProduce: (Stubber<[Entity]>) -> Void) -> MethodStub {
            let willReturn: [[Entity]] = []
			let given: Given = { return Given(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([Entity]).self)
			willProduce(stubber)
			return given
        }
        public static func findOne(where predicate: Parameter<NSPredicate>, willProduce: (Stubber<Entity>) -> Void) -> MethodStub {
            let willReturn: [Entity] = []
			let given: Given = { return Given(method: .m_findOne__where_predicate(`predicate`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Entity).self)
			willProduce(stubber)
			return given
        }
        public static func delete(entity: Parameter<Entity>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_delete__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func delete(entities: Parameter<[Entity]>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_delete__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func save(entity: Parameter<Entity>) -> Verify { return Verify(method: .m_save__entity_entity(`entity`))}
        public static func save(entities: Parameter<[Entity]>) -> Verify { return Verify(method: .m_save__entities_entities(`entities`))}
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>) -> Verify { return Verify(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`))}
        public static func findOne(where predicate: Parameter<NSPredicate>) -> Verify { return Verify(method: .m_findOne__where_predicate(`predicate`))}
        public static func delete(entity: Parameter<Entity>) -> Verify { return Verify(method: .m_delete__entity_entity(`entity`))}
        public static func delete(entities: Parameter<[Entity]>) -> Verify { return Verify(method: .m_delete__entities_entities(`entities`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func save(entity: Parameter<Entity>, perform: @escaping (Entity) -> Void) -> Perform {
            return Perform(method: .m_save__entity_entity(`entity`), performs: perform)
        }
        public static func save(entities: Parameter<[Entity]>, perform: @escaping ([Entity]) -> Void) -> Perform {
            return Perform(method: .m_save__entities_entities(`entities`), performs: perform)
        }
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>, perform: @escaping (NSPredicate, [NSSortDescriptor]) -> Void) -> Perform {
            return Perform(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`), performs: perform)
        }
        public static func findOne(where predicate: Parameter<NSPredicate>, perform: @escaping (NSPredicate) -> Void) -> Perform {
            return Perform(method: .m_findOne__where_predicate(`predicate`), performs: perform)
        }
        public static func delete(entity: Parameter<Entity>, perform: @escaping (Entity) -> Void) -> Perform {
            return Perform(method: .m_delete__entity_entity(`entity`), performs: perform)
        }
        public static func delete(entities: Parameter<[Entity]>, perform: @escaping ([Entity]) -> Void) -> Perform {
            return Perform(method: .m_delete__entities_entities(`entities`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - SuggestionRepositoryConstrainedToProtocol
open class SuggestionRepositoryConstrainedToProtocolMock<Entity>: SuggestionRepositoryConstrainedToProtocol, Mock where Entity: SuggestionProtocol {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func save(entity: Entity) -> Bool {
        let method = MethodType.m_save__entity_entity(Parameter<Entity>.value(`entity`))
		let stringName = "save(entity: Entity)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Entity) -> Void)?(`entity`)
		}
    }

    open func save(entities: [Entity]) -> Bool {
        let method = MethodType.m_save__entities_entities(Parameter<[Entity]>.value(`entities`))
		let stringName = "save(entities: [Entity])"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? ([Entity]) -> Void)?(`entities`)
		}
    }

    open func find(    where predicate: NSPredicate,    sortedBy sortDescriptors: [NSSortDescriptor]) -> [Entity] {
        let method = MethodType.m_find__where_predicatesortedBy_sortDescriptors(Parameter<NSPredicate>.value(`predicate`), Parameter<[NSSortDescriptor]>.value(`sortDescriptors`))
		let stringName = "find(    where predicate: NSPredicate,    sortedBy sortDescriptors: [NSSortDescriptor])"
		return registry.invoke(method, of: ([Entity]).self, named: stringName) {
			($0 as? (NSPredicate, [NSSortDescriptor]) -> Void)?(`predicate`, `sortDescriptors`)
		}
    }

    open func findOne(where predicate: NSPredicate) -> Entity {
        let method = MethodType.m_findOne__where_predicate(Parameter<NSPredicate>.value(`predicate`))
		let stringName = "findOne(where predicate: NSPredicate)"
		return registry.invoke(method, of: (Entity).self, named: stringName) {
			($0 as? (NSPredicate) -> Void)?(`predicate`)
		}
    }

    open func delete(entity: Entity) -> Bool {
        let method = MethodType.m_delete__entity_entity(Parameter<Entity>.value(`entity`))
		let stringName = "delete(entity: Entity)"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? (Entity) -> Void)?(`entity`)
		}
    }

    open func delete(entities: [Entity]) -> Bool {
        let method = MethodType.m_delete__entities_entities(Parameter<[Entity]>.value(`entities`))
		let stringName = "delete(entities: [Entity])"
		return registry.invoke(method, of: (Bool).self, named: stringName) {
			($0 as? ([Entity]) -> Void)?(`entities`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_save__entity_entity(Parameter<Entity>)
        case m_save__entities_entities(Parameter<[Entity]>)
        case m_find__where_predicatesortedBy_sortDescriptors(Parameter<NSPredicate>, Parameter<[NSSortDescriptor]>)
        case m_findOne__where_predicate(Parameter<NSPredicate>)
        case m_delete__entity_entity(Parameter<Entity>)
        case m_delete__entities_entities(Parameter<[Entity]>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_save__entity_entity(let lhsEntity), .m_save__entity_entity(let rhsEntity)):
                guard Parameter.compare(lhs: lhsEntity, rhs: rhsEntity, with: matcher) else { return false } 
                return true 
            case (.m_save__entities_entities(let lhsEntities), .m_save__entities_entities(let rhsEntities)):
                guard Parameter.compare(lhs: lhsEntities, rhs: rhsEntities, with: matcher) else { return false } 
                return true 
            case (.m_find__where_predicatesortedBy_sortDescriptors(let lhsPredicate, let lhsSortdescriptors), .m_find__where_predicatesortedBy_sortDescriptors(let rhsPredicate, let rhsSortdescriptors)):
                guard Parameter.compare(lhs: lhsPredicate, rhs: rhsPredicate, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsSortdescriptors, rhs: rhsSortdescriptors, with: matcher) else { return false } 
                return true 
            case (.m_findOne__where_predicate(let lhsPredicate), .m_findOne__where_predicate(let rhsPredicate)):
                guard Parameter.compare(lhs: lhsPredicate, rhs: rhsPredicate, with: matcher) else { return false } 
                return true 
            case (.m_delete__entity_entity(let lhsEntity), .m_delete__entity_entity(let rhsEntity)):
                guard Parameter.compare(lhs: lhsEntity, rhs: rhsEntity, with: matcher) else { return false } 
                return true 
            case (.m_delete__entities_entities(let lhsEntities), .m_delete__entities_entities(let rhsEntities)):
                guard Parameter.compare(lhs: lhsEntities, rhs: rhsEntities, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_save__entity_entity(p0): return p0.intValue
            case let .m_save__entities_entities(p0): return p0.intValue
            case let .m_find__where_predicatesortedBy_sortDescriptors(p0, p1): return p0.intValue + p1.intValue
            case let .m_findOne__where_predicate(p0): return p0.intValue
            case let .m_delete__entity_entity(p0): return p0.intValue
            case let .m_delete__entities_entities(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func save(entity: Parameter<Entity>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_save__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func save(entities: Parameter<[Entity]>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_save__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>, willReturn: [Entity]...) -> MethodStub {
            return Given(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func findOne(where predicate: Parameter<NSPredicate>, willReturn: Entity...) -> MethodStub {
            return Given(method: .m_findOne__where_predicate(`predicate`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func delete(entity: Parameter<Entity>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_delete__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func delete(entities: Parameter<[Entity]>, willReturn: Bool...) -> MethodStub {
            return Given(method: .m_delete__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func save(entity: Parameter<Entity>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_save__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func save(entities: Parameter<[Entity]>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_save__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>, willProduce: (Stubber<[Entity]>) -> Void) -> MethodStub {
            let willReturn: [[Entity]] = []
			let given: Given = { return Given(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([Entity]).self)
			willProduce(stubber)
			return given
        }
        public static func findOne(where predicate: Parameter<NSPredicate>, willProduce: (Stubber<Entity>) -> Void) -> MethodStub {
            let willReturn: [Entity] = []
			let given: Given = { return Given(method: .m_findOne__where_predicate(`predicate`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Entity).self)
			willProduce(stubber)
			return given
        }
        public static func delete(entity: Parameter<Entity>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_delete__entity_entity(`entity`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
        public static func delete(entities: Parameter<[Entity]>, willProduce: (Stubber<Bool>) -> Void) -> MethodStub {
            let willReturn: [Bool] = []
			let given: Given = { return Given(method: .m_delete__entities_entities(`entities`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (Bool).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func save(entity: Parameter<Entity>) -> Verify { return Verify(method: .m_save__entity_entity(`entity`))}
        public static func save(entities: Parameter<[Entity]>) -> Verify { return Verify(method: .m_save__entities_entities(`entities`))}
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>) -> Verify { return Verify(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`))}
        public static func findOne(where predicate: Parameter<NSPredicate>) -> Verify { return Verify(method: .m_findOne__where_predicate(`predicate`))}
        public static func delete(entity: Parameter<Entity>) -> Verify { return Verify(method: .m_delete__entity_entity(`entity`))}
        public static func delete(entities: Parameter<[Entity]>) -> Verify { return Verify(method: .m_delete__entities_entities(`entities`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func save(entity: Parameter<Entity>, perform: @escaping (Entity) -> Void) -> Perform {
            return Perform(method: .m_save__entity_entity(`entity`), performs: perform)
        }
        public static func save(entities: Parameter<[Entity]>, perform: @escaping ([Entity]) -> Void) -> Perform {
            return Perform(method: .m_save__entities_entities(`entities`), performs: perform)
        }
        public static func find(where predicate: Parameter<NSPredicate>, sortedBy sortDescriptors: Parameter<[NSSortDescriptor]>, perform: @escaping (NSPredicate, [NSSortDescriptor]) -> Void) -> Perform {
            return Perform(method: .m_find__where_predicatesortedBy_sortDescriptors(`predicate`, `sortDescriptors`), performs: perform)
        }
        public static func findOne(where predicate: Parameter<NSPredicate>, perform: @escaping (NSPredicate) -> Void) -> Perform {
            return Perform(method: .m_findOne__where_predicate(`predicate`), performs: perform)
        }
        public static func delete(entity: Parameter<Entity>, perform: @escaping (Entity) -> Void) -> Perform {
            return Perform(method: .m_delete__entity_entity(`entity`), performs: perform)
        }
        public static func delete(entities: Parameter<[Entity]>, perform: @escaping ([Entity]) -> Void) -> Perform {
            return Perform(method: .m_delete__entities_entities(`entities`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - TestAutoImport
open class TestAutoImportMock: TestAutoImport, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }






    public struct MethodType: MethodTypeProtocol {
        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool { return true }
        public func intValue() -> Int { return 0 }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - UserNetworkType
open class UserNetworkTypeMock: UserNetworkType, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    public required init(config: NetworkConfig) { }

    public required init(baseUrl: String) { }

    open func getUser(for id: String, completion: (User?) -> Void) {
        let method = MethodType.m_getUser__for_idcompletion_completion(Parameter<String>.value(`id`), Parameter<(User?) -> Void>.any)
		let stringName = "getUser(for id: String, completion: (User?) -> Void)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String, (User?) -> Void) -> Void)?(`id`, `completion`)
		}
    }

    open func getUserEscaping(for id: String, completion: @escaping (User?,Error?) -> Void) {
        let method = MethodType.m_getUserEscaping__for_idcompletion_completion(Parameter<String>.value(`id`), Parameter<(User?,Error?) -> Void>.value(`completion`))
		let stringName = "getUserEscaping(for id: String, completion: @escaping (User?,Error?) -> Void)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String, @escaping (User?,Error?) -> Void) -> Void)?(`id`, `completion`)
		}
    }

    open func doSomething(prop: @autoclosure () -> String) {
        let method = MethodType.m_doSomething__prop_prop(Parameter<() -> String>.any)
		let stringName = "doSomething(prop: @autoclosure () -> String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (@autoclosure () -> String) -> Void)?(`prop`())
		}
    }

    open func testDefaultValues(value: String) {
        let method = MethodType.m_testDefaultValues__value_value(Parameter<String>.value(`value`))
		let stringName = "testDefaultValues(value: String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String) -> Void)?(`value`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_getUser__for_idcompletion_completion(Parameter<String>, Parameter<(User?) -> Void>)
        case m_getUserEscaping__for_idcompletion_completion(Parameter<String>, Parameter<(User?,Error?) -> Void>)
        case m_doSomething__prop_prop(Parameter<() -> String>)
        case m_testDefaultValues__value_value(Parameter<String>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_getUser__for_idcompletion_completion(let lhsId, let lhsCompletion), .m_getUser__for_idcompletion_completion(let rhsId, let rhsCompletion)):
                guard Parameter.compare(lhs: lhsId, rhs: rhsId, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            case (.m_getUserEscaping__for_idcompletion_completion(let lhsId, let lhsCompletion), .m_getUserEscaping__for_idcompletion_completion(let rhsId, let rhsCompletion)):
                guard Parameter.compare(lhs: lhsId, rhs: rhsId, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher) else { return false } 
                return true 
            case (.m_doSomething__prop_prop(let lhsProp), .m_doSomething__prop_prop(let rhsProp)):
                guard Parameter.compare(lhs: lhsProp, rhs: rhsProp, with: matcher) else { return false } 
                return true 
            case (.m_testDefaultValues__value_value(let lhsValue), .m_testDefaultValues__value_value(let rhsValue)):
                guard Parameter.compare(lhs: lhsValue, rhs: rhsValue, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_getUser__for_idcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            case let .m_getUserEscaping__for_idcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            case let .m_doSomething__prop_prop(p0): return p0.intValue
            case let .m_testDefaultValues__value_value(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func getUser(for id: Parameter<String>, completion: Parameter<(User?) -> Void>) -> Verify { return Verify(method: .m_getUser__for_idcompletion_completion(`id`, `completion`))}
        public static func getUserEscaping(for id: Parameter<String>, completion: Parameter<(User?,Error?) -> Void>) -> Verify { return Verify(method: .m_getUserEscaping__for_idcompletion_completion(`id`, `completion`))}
        public static func doSomething(prop: Parameter<() -> String>) -> Verify { return Verify(method: .m_doSomething__prop_prop(`prop`))}
        public static func testDefaultValues(value: Parameter<String>) -> Verify { return Verify(method: .m_testDefaultValues__value_value(`value`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func getUser(for id: Parameter<String>, completion: Parameter<(User?) -> Void>, perform: @escaping (String, (User?) -> Void) -> Void) -> Perform {
            return Perform(method: .m_getUser__for_idcompletion_completion(`id`, `completion`), performs: perform)
        }
        public static func getUserEscaping(for id: Parameter<String>, completion: Parameter<(User?,Error?) -> Void>, perform: @escaping (String, @escaping (User?,Error?) -> Void) -> Void) -> Perform {
            return Perform(method: .m_getUserEscaping__for_idcompletion_completion(`id`, `completion`), performs: perform)
        }
        public static func doSomething(prop: Parameter<() -> String>, perform: @escaping (@autoclosure () -> String) -> Void) -> Perform {
            return Perform(method: .m_doSomething__prop_prop(`prop`), performs: perform)
        }
        public static func testDefaultValues(value: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_testDefaultValues__value_value(`value`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}

// MARK: - UserStorageType
open class UserStorageTypeMock: UserStorageType, Mock {
    init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.setupMock(file: file, line: line)
    }

    private let registry = MockRegistry<MethodType, Given, Verify, Perform>()
    var matcher: Matcher {
        get { return registry.matcher }
        set { registry.matcher = newValue }
    }
    var stubbingPolicy: StubbingPolicy {
        get { return registry.stubbingPolicy }
        set { registry.stubbingPolicy = newValue }
    }
    var sequencingPolicy: SequencingPolicy {
        get { return registry.sequencingPolicy }
        set { registry.sequencingPolicy = newValue }
    }
    
    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        registry.setupMock(file: file, line: line)
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        registry.resetMock(scopes)
    }





    open func surname(for name: String) -> String {
        let method = MethodType.m_surname__for_name(Parameter<String>.value(`name`))
		let stringName = "surname(for name: String)"
		return registry.invoke(method, of: (String).self, named: stringName) {
			($0 as? (String) -> Void)?(`name`)
		}
    }

    open func storeUser(name: String, surname: String) {
        let method = MethodType.m_storeUser__name_namesurname_surname(Parameter<String>.value(`name`), Parameter<String>.value(`surname`))
		let stringName = "storeUser(name: String, surname: String)"
		return registry.invoke(method, named: stringName) {
			($0 as? (String, String) -> Void)?(`name`, `surname`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_surname__for_name(Parameter<String>)
        case m_storeUser__name_namesurname_surname(Parameter<String>, Parameter<String>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_surname__for_name(let lhsName), .m_surname__for_name(let rhsName)):
                guard Parameter.compare(lhs: lhsName, rhs: rhsName, with: matcher) else { return false } 
                return true 
            case (.m_storeUser__name_namesurname_surname(let lhsName, let lhsSurname), .m_storeUser__name_namesurname_surname(let rhsName, let rhsSurname)):
                guard Parameter.compare(lhs: lhsName, rhs: rhsName, with: matcher) else { return false } 
                guard Parameter.compare(lhs: lhsSurname, rhs: rhsSurname, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_surname__for_name(p0): return p0.intValue
            case let .m_storeUser__name_namesurname_surname(p0, p1): return p0.intValue + p1.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func surname(for name: Parameter<String>, willReturn: String...) -> MethodStub {
            return Given(method: .m_surname__for_name(`name`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func surname(for name: Parameter<String>, willProduce: (Stubber<String>) -> Void) -> MethodStub {
            let willReturn: [String] = []
			let given: Given = { return Given(method: .m_surname__for_name(`name`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (String).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func surname(for name: Parameter<String>) -> Verify { return Verify(method: .m_surname__for_name(`name`))}
        public static func storeUser(name: Parameter<String>, surname: Parameter<String>) -> Verify { return Verify(method: .m_storeUser__name_namesurname_surname(`name`, `surname`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func surname(for name: Parameter<String>, perform: @escaping (String) -> Void) -> Perform {
            return Perform(method: .m_surname__for_name(`name`), performs: perform)
        }
        public static func storeUser(name: Parameter<String>, surname: Parameter<String>, perform: @escaping (String, String) -> Void) -> Perform {
            return Perform(method: .m_storeUser__name_namesurname_surname(`name`, `surname`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        registry.given(method)
    }

    public func perform(_ method: Perform) {
        registry.perform(method)
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        registry.verify(method, count: count, file: file, line: line)
    }
}


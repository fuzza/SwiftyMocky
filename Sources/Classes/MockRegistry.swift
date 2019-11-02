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

public class MockRegistry
  <
  MethodType: MethodTypeProtocol,
  Given: GivenProtocol,
  Verify: VerifyProtocol,
  Perform: PerformProtocol
  >: Mock
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

  public final func clear() {
      invocations = []
      methodReturnValues = []
      methodPerformValues = []
  }

  public final func setupMock(file: StaticString, line: UInt) {
      self.file = file
      self.line = line
  }

  public final func given(_ method: Given) {
      methodReturnValues.append(method)
  }

  public final func perform(_ method: Perform) {
      methodPerformValues.append(method)
      methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
  }

  public func verify(_ method: Verify, count: Count, file: StaticString, line: UInt) {
      let invocations = matchingCalls(method.method)
      MockyAssert(count.matches(invocations.count), "Expected: \(count) invocations of `\(method.method)`, but was: \(invocations.count)", file: file, line: line)
  }

  public final func addInvocation(_ call: MethodType) {
      invocations.append(call)
  }

  public final func methodReturnValue(_ method: MethodType) throws -> StubProduct {
      let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
      let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher) })
      guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
      return product
  }

  public final func methodPerformValue(_ method: MethodType) -> Any? {
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
}

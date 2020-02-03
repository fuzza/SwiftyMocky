func replacingSelf(_ value: String) -> String {
    return value
        // TODO: proper regex here
        // default < case >
        .replacingOccurrences(of: "<Self>", with: "<\(Current.selfType)>")
        .replacingOccurrences(of: "<Self ", with: "<\(Current.selfType) ")
        .replacingOccurrences(of: "<Self.", with: "<\(Current.selfType).")
        .replacingOccurrences(of: "<Self,", with: "<\(Current.selfType),")
        .replacingOccurrences(of: "<Self?", with: "<\(Current.selfType)?")
        .replacingOccurrences(of: " Self>", with: " \(Current.selfType)>")
        .replacingOccurrences(of: ",Self>", with: ",\(Current.selfType)>")
        // (Self) -> Case
        .replacingOccurrences(of: "(Self)", with: "(\(Current.selfType))")
        .replacingOccurrences(of: "(Self ", with: "(\(Current.selfType) ")
        .replacingOccurrences(of: "(Self.", with: "(\(Current.selfType).")
        .replacingOccurrences(of: "(Self,", with: "(\(Current.selfType),")
        .replacingOccurrences(of: "(Self?", with: "(\(Current.selfType)?")
        .replacingOccurrences(of: " Self)", with: " \(Current.selfType))")
        .replacingOccurrences(of: ",Self)", with: ",\(Current.selfType))")
        // literals
        .replacingOccurrences(of: "[Self]", with: "[\(Current.selfType)]")
        // right
        .replacingOccurrences(of: "[Self ", with: "[\(Current.selfType) ")
        .replacingOccurrences(of: "[Self.", with: "[\(Current.selfType).")
        .replacingOccurrences(of: "[Self,", with: "[\(Current.selfType),")
        .replacingOccurrences(of: "[Self:", with: "[\(Current.selfType):")
        .replacingOccurrences(of: "[Self?", with: "[\(Current.selfType)?")
        // left
        .replacingOccurrences(of: " Self]", with: " \(Current.selfType)]")
        .replacingOccurrences(of: ",Self]", with: ",\(Current.selfType)]")
        .replacingOccurrences(of: ":Self]", with: ":\(Current.selfType)]")
        // unknown
        .replacingOccurrences(of: " Self ", with: " \(Current.selfType) ")
        .replacingOccurrences(of: " Self.", with: " \(Current.selfType).")
        .replacingOccurrences(of: " Self,", with: " \(Current.selfType),")
        .replacingOccurrences(of: " Self:", with: " \(Current.selfType):")
        .replacingOccurrences(of: " Self?", with: " \(Current.selfType)?")
        .replacingOccurrences(of: ",Self ", with: ",\(Current.selfType) ")
        .replacingOccurrences(of: ",Self,", with: ",\(Current.selfType),")
        .replacingOccurrences(of: ",Self?", with: ",\(Current.selfType)?")
}

class MethodWrapper {
    private func deprecatedMessage(_ preferred: String = "") -> String {
        return "@available(*, deprecated, message: \"This constructor is deprecated, and will be removed in v3.1\(preferred)\")\n\t\t"
    }
    private static var registered: [String: Int] = [:]
    private static var suffixes: [String: Int] = [:]
    private static var suffixesWithoutReturnType: [String: Int] = [:]

    let method: SourceryRuntime.Method
    var accessModifier: String {
        guard !method.isStatic else { return "public static" }
        guard !returnsGenericConstrainedToSelf else { return "public" }
        return "open"
    }

    private var registrationName: String {
        var rawName = (method.isStatic ? "sm*\(method.selectorName)" : "m*\(method.selectorName)")
        .replacingOccurrences(of: "_", with: "")
        .replacingOccurrences(of: "(", with: "__")
        .replacingOccurrences(of: ")", with: "")

        var parametersNames = method.parameters.map { "\($0.name)" }

        while let range = rawName.range(of: ":"), let name = parametersNames.first {
            parametersNames.removeFirst()
            rawName.replaceSubrange(range, with: "_\(name)")
        }

        let trimSet = CharacterSet(charactersIn: "_")

        return  rawName
        .replacingOccurrences(of: ":", with: "")
        .replacingOccurrences(of: "m*", with: "m_")
        .replacingOccurrences(of: "___", with: "__").trimmingCharacters(in: trimSet)
    }
    private var uniqueName: String {
        var rawName = (method.isStatic ? "sm_\(method.selectorName)" : "m_\(method.selectorName)")
        var parametersNames = method.parameters.map { "\($0.name)_of_\($0.typeName.name)" }

        while let range = rawName.range(of: ":"), let name = parametersNames.first {
            parametersNames.removeFirst()
            rawName.replaceSubrange(range, with: "_\(name)")
        }

        return rawName.trimmingCharacters(in: CharacterSet(charactersIn: "_"))
    }
    private var uniqueNameWithReturnType: String {
        let returnTypeRaw = "\(method.returnTypeName)"
        var returnTypeStripped: String = {
            guard let range = returnTypeRaw.range(of: "where") else { return returnTypeRaw }
            var stripped = returnTypeRaw
            stripped.removeSubrange((range.lowerBound)...)
            return stripped
        }()
        returnTypeStripped = returnTypeStripped.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        return "\(uniqueName)->\(returnTypeStripped)"
    }
    private var nameSuffix: String {
        guard let count = MethodWrapper.registered[registrationName] else { return "" }
        guard count > 1 else { return "" }
        guard let index = MethodWrapper.suffixes[uniqueNameWithReturnType] else { return "" }
        return "_\(index)"
    }

    var prototype: String {
        return "\(registrationName)\(nameSuffix)".replacingOccurrences(of: "`", with: "")
    }
    var parameters: [ParameterWrapper] {
        return method.parameters.map { ParameterWrapper($0) }
    }
    var functionPrototype: String {
        let throwing: String = {
            if method.throws {
                return "throws "
            } else if method.rethrows {
                return "rethrows "
            } else {
                return ""
            }
        }()

        let staticModifier: String = "\(accessModifier) "
        let params = replacingSelf(parametersForStubSignature())

        if method.isInitializer {
            return "public required \(method.name) \(throwing)"
        } else if method.returnTypeName.isVoid {
            let wherePartIfNeeded: String = {
                if method.returnTypeName.name.hasPrefix("Void") {
                    let range = method.returnTypeName.name.range(of: "Void")!
                    return "\(method.returnTypeName.name[range.upperBound...])"
                } else {
                    return !method.returnTypeName.name.isEmpty ? "\(method.returnTypeName.name) " : ""
                }
            }()
            return "\(staticModifier)func \(method.shortName)\(params) \(throwing)\(wherePartIfNeeded)"
        } else if returnsGenericConstrainedToSelf {
            return "\(staticModifier)func \(method.shortName)\(params) \(throwing)-> \(returnTypeReplacingSelf) "
        } else {
            return "\(staticModifier)func \(method.shortName)\(params) \(throwing)-> \(method.returnTypeName.name) "
        }
    }
    var equalCase: String {
        guard !method.isInitializer else { return "" }

        if method.parameters.isEmpty {
            return "case (.\(prototype), .\(prototype)):"
        } else {
            let lhsParams = method.parameters.map { "let lhs\($0.name.capitalized)" }.joined(separator: ", ")
            let rhsParams = method.parameters.map { "let rhs\($0.name.capitalized)" }.joined(separator: ", ")
            return "case (.\(prototype)(\(lhsParams)), .\(prototype)(\(rhsParams))):"
        }
    }
    var intValueCase: String {
        if method.parameters.isEmpty {
            return "case .\(prototype): return 0"
        } else {
            let params = method.parameters.enumerated().map { offset, _ in
                return "p\(offset)"
            }
            let definitions = params.joined(separator: ", ")
            let paramsSum = params.map({ "\($0).intValue" }).joined(separator: " + ")
            return "case let .\(prototype)(\(definitions)): return \(paramsSum)"
        }
    }

    var returnsSelf: Bool {
        guard !returnsGenericConstrainedToSelf else { return true }
        return !method.returnTypeName.isVoid && TypeWrapper(method.returnTypeName).isSelfType
    }
    var returnsGenericConstrainedToSelf: Bool {
        let defaultReturnType = "\(method.returnTypeName.name) "
        return defaultReturnType != returnTypeReplacingSelf
    }
    var returnTypeReplacingSelf: String {
        return replacingSelf("\(method.returnTypeName.name) ")
    }
    var parametersContainsSelf: Bool {
        return replacingSelf(parametersForStubSignature()) != parametersForStubSignature()
    }

    var replaceSelf: String {
        return Current.selfType
    }

    init(_ method: SourceryRuntime.Method) {
        self.method = method
    }

    public static func clear() -> String {
        MethodWrapper.registered = [:]
        MethodWrapper.suffixes = [:]
        MethodWrapper.suffixesWithoutReturnType = [:]
        return ""
    }

    func register() {
        MethodWrapper.register(registrationName,uniqueName,uniqueNameWithReturnType)
    }

    static func register(_ name: String, _ uniqueName: String, _ uniqueNameWithReturnType: String) {
        if let count = MethodWrapper.registered[name] {
            MethodWrapper.registered[name] = count + 1
            MethodWrapper.suffixes[uniqueNameWithReturnType] = count + 1
        } else {
            MethodWrapper.registered[name] = 1
            MethodWrapper.suffixes[uniqueNameWithReturnType] = 1
        }

        if let count = MethodWrapper.suffixesWithoutReturnType[uniqueName] {
            MethodWrapper.suffixesWithoutReturnType[uniqueName] = count + 1
        } else {
            MethodWrapper.suffixesWithoutReturnType[uniqueName] = 1
        }
    }

    func returnTypeMatters() -> Bool {
        let count = MethodWrapper.suffixesWithoutReturnType[uniqueName] ?? 0
        return count > 1
    }

    func wrappedInMethodType() -> Bool {
        return !method.isInitializer
    }

    func returningParameter(_ multiple: Bool, _ front: Bool) -> String {
        guard returnTypeMatters() else { return "" }
        let returning: String = "returning: \(returnTypeStripped(method, type: true))"
        guard multiple else { return returning }

        return front ? ", \(returning)" : "\(returning), "
    }

    // Stub
    func stubBody() -> String {
        guard !method.isInitializer else { return "" }
        let body = invokeBody()
        return replacingSelf(body)
    }

    // Method Type
    func methodTypeDeclarationWithParameters() -> String {
        guard !method.parameters.isEmpty else { return "\(prototype)" }
        return "\(prototype)(\(parametersForMethodTypeDeclaration()))"
    }

    // Given
    func containsEmptyArgumentLabels() -> Bool {
        return parameters.contains(where: { $0.parameter.argumentLabel == nil })
    }

    func givenReturnTypeString() -> String {
        let returnTypeString: String = {
            guard !returnsGenericConstrainedToSelf else { return returnTypeReplacingSelf }
            guard !returnsSelf else { return replaceSelf }
            return TypeWrapper(method.returnTypeName).stripped
        }()
        return returnTypeString
    }

    func givenConstructorName(prefix: String = "", deprecated: Bool = false, annotated: Bool = true) -> String {
        let returnTypeString = givenReturnTypeString()
        let (annotation, _, _) = methodInfo(deprecated, annotated)
        let clauseConstraints = whereClauseExpression()

        if method.parameters.isEmpty {
            return "public static func \(method.shortName)(willReturn: \(returnTypeString)...) -> \(prefix)MethodStub" + clauseConstraints
        } else {
            return "\(annotation)public static func \(method.shortName)(\(parametersForProxySignature(deprecated: deprecated)), willReturn: \(returnTypeString)...) -> \(prefix)MethodStub" + clauseConstraints
        }
    }

    func givenConstructorNameThrows(prefix: String = "", deprecated: Bool = false, annotated: Bool = true) -> String {
        let (annotation, _, _) = methodInfo(deprecated, annotated)
        let clauseConstraints = whereClauseExpression()
        if method.parameters.isEmpty {
            return "public static func \(method.shortName)(willThrow: Error...) -> \(prefix)MethodStub" + clauseConstraints
        } else {
            return "\(annotation)public static func \(method.shortName)(\(parametersForProxySignature(deprecated: deprecated)), willThrow: Error...) -> \(prefix)MethodStub" + clauseConstraints
        }
    }

    func givenConstructor(prefix: String = "") -> String {
        if method.parameters.isEmpty {
            return "return \(prefix)Given(method: .\(prototype), products: willReturn.map({ StubProduct.return($0 as Any) }))"
        } else {
            return "return \(prefix)Given(method: .\(prototype)(\(parametersForProxyInit())), products: willReturn.map({ StubProduct.return($0 as Any) }))"
        }
    }

    func givenConstructorThrows(prefix: String = "") -> String {
        if method.parameters.isEmpty {
            return "return \(prefix)Given(method: .\(prototype), products: willThrow.map({ StubProduct.throw($0) }))"
        } else {
            return "return \(prefix)Given(method: .\(prototype)(\(parametersForProxyInit())), products: willThrow.map({ StubProduct.throw($0) }))"
        }
    }

    // Given willProduce
    func givenProduceConstructorName(prefix: String = "") -> String {
        let returnTypeString = givenReturnTypeString()
        let produceClosure = "(Stubber<\(returnTypeString)>) -> Void"
        let clauseConstraints = whereClauseExpression()

        if method.parameters.isEmpty {
            return "public static func \(method.shortName)(willProduce: \(produceClosure)) -> \(prefix)MethodStub" + clauseConstraints
        } else {
            return "public static func \(method.shortName)(\(parametersForProxySignature()), willProduce: \(produceClosure)) -> \(prefix)MethodStub" + clauseConstraints
        }
    }

    func givenProduceConstructorNameThrows(prefix: String = "") -> String {
        let returnTypeString = givenReturnTypeString()
        let produceClosure = "(StubberThrows<\(returnTypeString)>) -> Void"
        let clauseConstraints = whereClauseExpression()

        if method.parameters.isEmpty {
            return "public static func \(method.shortName)(willProduce: \(produceClosure)) -> \(prefix)MethodStub" + clauseConstraints
        } else {
            return "public static func \(method.shortName)(\(parametersForProxySignature()), willProduce: \(produceClosure)) -> \(prefix)MethodStub" + clauseConstraints
        }
    }

    func givenProduceConstructor(prefix: String = "") -> String {
        let returnTypeString = givenReturnTypeString()
        return """
        let willReturn: [\(returnTypeString)] = []
        \t\t\tlet given: \(prefix)Given = { \(givenConstructor(prefix: prefix)) }()
        \t\t\tlet stubber = given.stub(for: (\(returnTypeString)).self)
        \t\t\twillProduce(stubber)
        \t\t\treturn given
        """
    }

    func givenProduceConstructorThrows(prefix: String = "") -> String {
        let returnTypeString = givenReturnTypeString()
        return """
        let willThrow: [Error] = []
        \t\t\tlet given: \(prefix)Given = { \(givenConstructorThrows(prefix: prefix)) }()
        \t\t\tlet stubber = given.stubThrows(for: (\(returnTypeString)).self)
        \t\t\twillProduce(stubber)
        \t\t\treturn given
        """
    }

    // Verify
    func verificationProxyConstructorName(prefix: String = "", deprecated: Bool = false, annotated: Bool = true) -> String {
        let (annotation, methodName, genericConstrains) = methodInfo(deprecated, annotated)

        if method.parameters.isEmpty {
            return "public static func \(methodName)(\(returningParameter(false,true))) -> \(prefix)Verify\(genericConstrains)"
        } else {
            return "\(annotation)public static func \(methodName)(\(parametersForProxySignature(deprecated: deprecated))\(returningParameter(true,true))) -> \(prefix)Verify\(genericConstrains)"
        }
    }

    func verificationProxyConstructor(prefix: String = "") -> String {
        if method.parameters.isEmpty {
            return "return \(prefix)Verify(method: .\(prototype))"
        } else {
            return "return \(prefix)Verify(method: .\(prototype)(\(parametersForProxyInit())))"
        }
    }

    // Perform
    func performProxyConstructorName(prefix: String = "", deprecated: Bool = false, annotated: Bool = true) -> String {
        let body: String = {
            let (annotation, methodName, genericConstrains) = methodInfo(deprecated, annotated)

            if method.parameters.isEmpty {
                return "public static func \(methodName)(\(returningParameter(true,false))perform: @escaping \(performProxyClosureType())) -> \(prefix)Perform\(genericConstrains)"
            } else {
                return "\(annotation)public static func \(methodName)(\(parametersForProxySignature(deprecated: deprecated)), \(returningParameter(true,false))perform: @escaping \(performProxyClosureType())) -> \(prefix)Perform\(genericConstrains)"
            }
        }()
        return replacingSelf(body)
    }

    func performProxyConstructor(prefix: String = "") -> String {
        if method.parameters.isEmpty {
            return "return \(prefix)Perform(method: .\(prototype), performs: perform)"
        } else {
            return "return \(prefix)Perform(method: .\(prototype)(\(parametersForProxyInit())), performs: perform)"
        }
    }

    func performProxyClosureType() -> String {
        if method.parameters.isEmpty {
            return "() -> Void"
        } else {
            let parameters = self.parameters
                .map { "\($0.justPerformType)" }
                .joined(separator: ", ")
            return "(\(parameters)) -> Void"
        }
    }

    func performProxyClosureCall() -> String {
        if method.parameters.isEmpty {
            return "perform?()"
        } else {
            let parameters = method.parameters
                .map { p in
                    let wrapped = ParameterWrapper(p)
                    let isAutolosure = wrapped.justType.hasPrefix("@autoclosure")
                    return "\(p.inout ? "&" : "")`\(p.name)`\(isAutolosure ? "()" : "")"
                }
                .joined(separator: ", ")
            return "perform?(\(parameters))"
        }
    }

    func performCall() -> String {
        guard !method.isInitializer else { return "" }
        let type = performProxyClosureType()
        var proxy = method.parameters.isEmpty ? "\(prototype)" : "\(prototype)(\(parametersForMethodCall()))"

        let cast = "let perform = registry.methodPerformValue(.\(proxy)) as? \(type)"
        let call = performProxyClosureCall()

        return "\n\t\t\(cast)\n\t\t\(call)"
    }

    // Helpers
    private func parametersForMethodCall() -> String {
        let generics = getGenericsWithoutConstraints()
        return parameters.map { $0.wrappedForCalls(generics) }.joined(separator: ", ")
    }

    private func parametersForMethodTypeDeclaration() -> String {
        let generics = getGenericsWithoutConstraints()
        return parameters.map { param in
            return param.isGeneric(generics) ? param.genericType : replacingSelf(param.nestedType)
        }.joined(separator: ", ")
    }

    private func parametersForProxySignature(deprecated: Bool = false) -> String {
        return parameters.map { p in
            guard deprecated else { return "\(p.labelAndName()): \(replacingSelf(p.nestedType))" }
            guard let argumentLabel = p.parameter.argumentLabel else { return "\(p.parameter.name): \(replacingSelf(p.nestedType))" }
            guard argumentLabel != p.name else { return "\(p.parameter.name): \(replacingSelf(p.nestedType))" }
            return "\(argumentLabel) \(p.parameter.name): \(replacingSelf(p.nestedType))"
        }.joined(separator: ", ")
    }

    private func deprecatedParametersMessage() -> String {
        let newParams = parameters.map { p in return "\(p.parameter.argumentLabel ?? "_")" }
        let oldParams = parameters.map { p -> String in
            guard let argumentLabel = p.parameter.argumentLabel else { return "\(p.parameter.name)" }
            guard argumentLabel != p.name else { return "\(p.parameter.name)" }
            return "\(argumentLabel)"
        }

        var messages: [String] = []
        for i in 0..<newParams.count {
            if newParams[i] != oldParams[i] {
                messages.append(" remove `\(oldParams[i])` label")
            }
        }

        return " Possible fix: " + messages.joined(separator: ",")
    }

    private func parametersForStubSignature() -> String {
        func replacing(first: String, in full: String, with other: String) -> String {
            guard let range = full.range(of: first) else { return full }
            return full.replacingCharacters(in: range, with: other)
        }
        let prefix = method.shortName
        let full = method.name
        let range = full.range(of: prefix)!
        var unrefined = "\(full[range.upperBound...])"
        parameters.map { p -> (String,String) in
            return ("\(p.type)","\(p.justType)")
        }.forEach {
            unrefined = replacing(first: $0, in: unrefined, with: $1)
        }
        return unrefined
    }

    private func parametersForProxyInit() -> String {
        let generics = getGenericsWithoutConstraints()
        return parameters.map { "\($0.wrappedForProxy(generics))" }.joined(separator: ", ")
    }

    private func isGeneric() -> Bool {
        return method.shortName.contains("<") && method.shortName.contains(">")
    }

    /// Returns list of generics used in method signature, without their constraints (like [T,U,V])
    ///
    /// - Returns: Array of strings, where each strings represent generic name
    private func getGenericsWithoutConstraints() -> [String] {
        let name = method.shortName
        guard let start = name.index(of: "<"), let end = name.index(of: ">") else { return [] }

        var genPart = name[start...end]
        genPart.removeFirst()
        genPart.removeLast()

        let parts = genPart.replacingOccurrences(of: " ", with: "").characters.split(separator: ",").map(String.init)
        return parts.map { stripGenPart(part: $0) }
    }

    /// Returns list of generic constraintes from method signature. Does only contain stuff between '<' and '>'
    ///
    /// - Returns: Array of strings, like ["T: Codable", "U: Whatever"]
    private func getGenericsConstraints(_ generics: [String]) -> [String] {
        let name = method.shortName
        guard let start = name.index(of: "<"), let end = name.index(of: ">") else { return [] }

        var genPart = name[start...end]
        genPart.removeFirst()
        genPart.removeLast()

        let parts = genPart.replacingOccurrences(of: " ", with: "").characters.split(separator: ",").map(String.init)
        return parts.filter {
            let components = $0.components(separatedBy: ":")
            return components.count == 2 && generics.contains(components[0])
        }
    }

    private func getGenericsAmongParameters() -> [String] {
        return getGenericsWithoutConstraints().filter {
            for param in self.parameters {
                if param.isGeneric([$0]) { return true }
            }
            return false
        }
    }

    private func wrapGenerics(_ generics: [String]) -> String {
        guard !generics.isEmpty else { return "" }
        return "<\(generics.joined(separator:","))>"
    }

    private func stripGenPart(part: String) -> String {
        return part.characters.split(separator: ":").map(String.init).first!
    }

    private func returnTypeStripped(_ method: SourceryRuntime.Method, type: Bool = false) -> String {
        let returnTypeRaw = "\(method.returnTypeName)"
        var stripped: String = {
            guard let range = returnTypeRaw.range(of: "where") else { return returnTypeRaw }
            var stripped = returnTypeRaw
            stripped.removeSubrange((range.lowerBound)...)
            return stripped
        }()
        stripped = stripped.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        guard type else { return stripped }
        return "(\(stripped)).Type"
    }

    private func whereClauseConstraints() -> [String] {
        let returnTypeRaw = method.returnTypeName.name
        guard let range = returnTypeRaw.range(of: "where") else { return [] }
        var whereClause = returnTypeRaw
        whereClause.removeSubrange(...(range.upperBound))
        return whereClause
            .trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
            .components(separatedBy: ",")
    }

    private func whereClauseExpression() -> String {
        let constraints = whereClauseConstraints()
        if constraints.isEmpty {
            return ""
        }
        return " where " + constraints.joined(separator: ", ")
    }

    private func methodInfo(_ deprecated: Bool, _ annotated: Bool)
        -> (annotation: String, methodName: String, genericConstrains: String) {
            let generics = getGenericsAmongParameters()
            let annotation = annotated && deprecated ? deprecatedMessage(deprecatedParametersMessage()) : ""
            let methodName = returnTypeMatters() ? method.shortName : "\(method.callName)\(wrapGenerics(generics))"
            let constraints: String = {
                let constraints: [String]
                if returnTypeMatters() {
                    constraints = whereClauseConstraints()
                } else {
                    constraints = getGenericsConstraints(generics)
                }
                guard !constraints.isEmpty else { return "" }

                return " where \(constraints.joined(separator: ", "))"
            }()
            return (annotation, methodName, constraints)
    }
    
    // MARK: - New
    
    func invokeBody() -> String {
        return """
        return \(invokeCall) {
        \t\t\t($0 as? \(performProxyClosureType()))?(\(performProxyClosureArguments))
        \t\t}
        """
    }
    
    private var invokeCall: String {
        let prefix =  method.throws ? "try " : ""
        return prefix + "registry.\(invokeFuncName)(\(fullMethodTypeCall))"
    }
    
    private var invokeFuncName: String {
        let suffix = method.throws ? "Throwing" : ""
        return "invoke" + suffix
    }
    
    private var fullMethodTypeCall: String {
        let prefix = method.isStatic ? "Static" : ""
        return prefix + "MethodType\(shortMethodTypeCall)"
    }
    
    private var shortMethodTypeCall: String {
        if method.parameters.isEmpty {
            return ".\(prototype)"
        } else {
            return ".\(prototype)(\(parametersForMethodCall()))"
        }
    }
    
    private var stringifiedMethodName: String {
        return method.name.replacingOccurrences(of: "\t", with: " ")
    }
    
    private var performProxyClosureArguments: String {
        if method.parameters.isEmpty {
            return ""
        } else {
            return method.parameters
                .map { p in
                    let wrapped = ParameterWrapper(p)
                    let isAutolosure = wrapped.justType.hasPrefix("@autoclosure")
                    return "\(p.inout ? "&" : "")`\(p.name)`\(isAutolosure ? "()" : "")"
            }
            .joined(separator: ", ")
        }
    }
}


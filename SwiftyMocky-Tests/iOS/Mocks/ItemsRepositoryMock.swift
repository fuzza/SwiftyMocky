//
//  ItemsRepositoryMock.swift
//  Mocky
//
//  Created by przemyslaw.wosko on 19/05/2017.
//  Copyright © 2017 MakeAWishFoundation. All rights reserved.
//

import Foundation
import SwiftyMocky
import XCTest
@testable import Mocky_Example_iOS

// sourcery: mock = "ItemsRepository"
class ItemsRepositoryMock: ItemsRepository, Mock {
// sourcery:inline:auto:ItemsRepositoryMock.autoMocked
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
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }






    open func storeItems(items: [Item]) {
        let method = MethodType.m_storeItems__items_items(Parameter<[Item]>.value(`items`))
		let stringName = "storeItems(items: [Item])"
		return registry.invoke(method, named: stringName) {
			($0 as? ([Item]) -> Void)?(`items`)
		}
    }

    open func storeDetails(details: ItemDetails) {
        let method = MethodType.m_storeDetails__details_details(Parameter<ItemDetails>.value(`details`))
		let stringName = "storeDetails(details: ItemDetails)"
		return registry.invoke(method, named: stringName) {
			($0 as? (ItemDetails) -> Void)?(`details`)
		}
    }

    open func storedItems() -> [Item]? {
        let method = MethodType.m_storedItems
		let stringName = "storedItems()"
		return registry.invoke(method, of: ([Item]?).self, named: stringName) {
			($0 as? () -> Void)?()
		}
    }

    open func storedDetails(item: Item) -> ItemDetails? {
        let method = MethodType.m_storedDetails__item_item(Parameter<Item>.value(`item`))
		let stringName = "storedDetails(item: Item)"
		return registry.invoke(method, of: (ItemDetails?).self, named: stringName) {
			($0 as? (Item) -> Void)?(`item`)
		}
    }


    public enum MethodType: MethodTypeProtocol {
        case m_storeItems__items_items(Parameter<[Item]>)
        case m_storeDetails__details_details(Parameter<ItemDetails>)
        case m_storedItems
        case m_storedDetails__item_item(Parameter<Item>)

        public static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Bool {
            switch (lhs, rhs) {
            case (.m_storeItems__items_items(let lhsItems), .m_storeItems__items_items(let rhsItems)):
                guard Parameter.compare(lhs: lhsItems, rhs: rhsItems, with: matcher) else { return false } 
                return true 
            case (.m_storeDetails__details_details(let lhsDetails), .m_storeDetails__details_details(let rhsDetails)):
                guard Parameter.compare(lhs: lhsDetails, rhs: rhsDetails, with: matcher) else { return false } 
                return true 
            case (.m_storedItems, .m_storedItems):
                return true 
            case (.m_storedDetails__item_item(let lhsItem), .m_storedDetails__item_item(let rhsItem)):
                guard Parameter.compare(lhs: lhsItem, rhs: rhsItem, with: matcher) else { return false } 
                return true 
            default: return false
            }
        }

        public func intValue() -> Int {
            switch self {
            case let .m_storeItems__items_items(p0): return p0.intValue
            case let .m_storeDetails__details_details(p0): return p0.intValue
            case .m_storedItems: return 0
            case let .m_storedDetails__item_item(p0): return p0.intValue
            }
        }
    }

    open class Given: StubbedMethod, GivenProtocol {
        public var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func storedItems(willReturn: [Item]?...) -> MethodStub {
            return Given(method: .m_storedItems, products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func storedDetails(item: Parameter<Item>, willReturn: ItemDetails?...) -> MethodStub {
            return Given(method: .m_storedDetails__item_item(`item`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func storedItems(willProduce: (Stubber<[Item]?>) -> Void) -> MethodStub {
            let willReturn: [[Item]?] = []
			let given: Given = { return Given(method: .m_storedItems, products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([Item]?).self)
			willProduce(stubber)
			return given
        }
        public static func storedDetails(item: Parameter<Item>, willProduce: (Stubber<ItemDetails?>) -> Void) -> MethodStub {
            let willReturn: [ItemDetails?] = []
			let given: Given = { return Given(method: .m_storedDetails__item_item(`item`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (ItemDetails?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify: VerifyProtocol {
        public var method: MethodType

        public static func storeItems(items: Parameter<[Item]>) -> Verify { return Verify(method: .m_storeItems__items_items(`items`))}
        public static func storeDetails(details: Parameter<ItemDetails>) -> Verify { return Verify(method: .m_storeDetails__details_details(`details`))}
        public static func storedItems() -> Verify { return Verify(method: .m_storedItems)}
        public static func storedDetails(item: Parameter<Item>) -> Verify { return Verify(method: .m_storedDetails__item_item(`item`))}
    }

    public struct Perform: PerformProtocol {
        public var method: MethodType
        public var performs: Any

        public static func storeItems(items: Parameter<[Item]>, perform: @escaping ([Item]) -> Void) -> Perform {
            return Perform(method: .m_storeItems__items_items(`items`), performs: perform)
        }
        public static func storeDetails(details: Parameter<ItemDetails>, perform: @escaping (ItemDetails) -> Void) -> Perform {
            return Perform(method: .m_storeDetails__details_details(`details`), performs: perform)
        }
        public static func storedItems(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_storedItems, performs: perform)
        }
        public static func storedDetails(item: Parameter<Item>, perform: @escaping (Item) -> Void) -> Perform {
            return Perform(method: .m_storedDetails__item_item(`item`), performs: perform)
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
    
// sourcery:end
}

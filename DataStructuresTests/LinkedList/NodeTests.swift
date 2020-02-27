//
//  NodeTests.swift
//  DataStructuresTests
//
//  Created by Ricardo.Maqueda on 27/02/2020.
//  Copyright © 2020 Ricardo.Maqueda. All rights reserved.
//

import XCTest
@testable import DataStructures

class NodeTests: XCTestCase {

    override func setUp() {
        super.setUp()

    }

    override func tearDown() {

        super.tearDown()
    }

    func test_node_init() {
        let node = Node(value: 1)
        XCTAssertEqual(node.value, 1)
        XCTAssertNil(node.next)
    }

    func test_description() {
        let node3 = Node(value: 3)
        let node2 = Node(value: 2, next: node3)
        let node1 = Node(value: 1, next: node2)

        XCTAssertEqual(node1.description, "1 -> 2 -> 3")
    }

}

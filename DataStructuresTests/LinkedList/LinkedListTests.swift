//
//  LinkedListTests.swift
//  DataStructuresTests
//
//  Created by Ricardo.Maqueda on 27/02/2020.
//  Copyright © 2020 Ricardo.Maqueda. All rights reserved.
//

import XCTest
@testable import DataStructures

class LinkedListTests: XCTestCase {

    func test_description() {
        var list = LinkedList<Int>()
        list.push(3)
        XCTAssertEqual(list.description, "3")

        list.push(1)
        XCTAssertEqual(list.description, "1 -> 3")
    }

    func test_push_one_element() {
        var list = LinkedList<Int>()
        list.push(3)

        XCTAssertEqual(list.head?.value, 3)
        XCTAssertEqual(list.tail?.value, 3)
    }

    func test_push_two_element() {
        var list = LinkedList<Int>()
        list.push(2)
        list.push(1)

        XCTAssertEqual(list.head?.value, 1)
        XCTAssertEqual(list.tail?.value, 2)
        XCTAssertEqual(list.description, "1 -> 2")
    }

    func test_isEmpty() {
        var list = LinkedList<Int>()
        XCTAssertTrue(list.isEmpty)
        list.push(1)
        XCTAssertFalse(list.isEmpty)
    }

    func test_append_one_element() {
        var list = LinkedList<Int>()
        list.append(1)

        XCTAssertEqual(list.head?.value, 1)
        XCTAssertEqual(list.tail?.value, 1)
    }

    func test_append_two_element() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)

        XCTAssertEqual(list.head?.value, 1)
        XCTAssertEqual(list.tail?.value, 2)
    }

    func test_nodeAt() {
        var list = LinkedList<Int>()
        list.append(1)
        list.append(2)

        XCTAssertEqual(list.node(at: 0)?.value, 1)
        XCTAssertEqual(list.node(at: 1)?.value, 2)
        XCTAssertEqual(list.node(at: 2)?.value, nil)
    }

    func test_insert_one_no_existent_element() {
        var list = LinkedList<Int>()
        let node = list.insert(0, after: Node<Int>(value: 0))

        XCTAssertEqual(node?.value, 0)
        XCTAssertNil(node?.next)
    }

    func test_insert_one_existent_element() {
        var list = LinkedList<Int>()
        list.append(0)
        let node = list.insert(1, after: Node<Int>(value: 0))

        XCTAssertEqual(node?.value, 1)
        XCTAssertEqual(node?.next?.value, 0)
    }

}

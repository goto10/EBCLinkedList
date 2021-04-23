//
//  EBC-LinkedList.swift
//  EBC-LinkedList
//
//  Created by Myke on 4/22/21.
//

import Foundation

public class EBCLinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    private var _count: UInt = 0
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: UInt {
        return _count
    }
    
    public var first: T? {
        return head?.value
    }
    
    public var last: T? {
        return tail?.value
    }
    
    public init() {
    // This initializer intentionally left empty
    }
    
    public func append(_ value: T) {
        let newNode = Node(with: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
        _count += 1
    }
    
    /// Remove all items from the list
    public func removeAll() {
        head = nil
        tail = nil
        _count = 0
    }
    
    private func remove(node: Node<T>) -> T {
        let previousNode = node.previous
        let nextNode = node.next
        
        if let previous = previousNode {
            previous.next = nextNode
        } else {
            head = nextNode
        }
        
        nextNode?.previous = previousNode
        
        if nextNode == nil {
            tail = previousNode
        }
        
        node.previous = nil
        node.next = nil
        
        _count -= 1
        
        return node.value
        
    }
    
    public func removeLast() -> T? {
        if let tail = tail {
            let node = self.remove(node: tail)
            return node
        } else {
            return nil
        }
    }
    
    public func removeFirst() -> T? {
        if let head = head {
            return self.remove(node: head)
        } else {
            return nil
        }
    }
    
}

extension EBCLinkedList: CustomStringConvertible {
    public var description: String {
        var text = "["
        
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        
        return text + "]"
    }
}


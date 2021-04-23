//
//  Node.swift
//  
//
//  Created by Myke on 4/23/21.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node?
    weak var previous: Node?
    
    init(with newValue: T) {
        self.value = newValue
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        var text = ""
        text += "Node Value: \(self.value)\n"
        text += "Next Node: \(String(describing: self.next?.value))\n"
        text += "Prev Node: \(String(describing: self.previous?.value))\n"
        return text
    }
}

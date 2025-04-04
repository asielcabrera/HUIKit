//
//  Tag.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

open class Tag {

    public var node: Node
    public var children: [Tag]

    public init(_ node: Node, children: [Tag] = []) {
        self.node = node
        self.children = children
    }
   
    public func attribute(_ key: String, _ value: String?, _ condition: Bool = true) -> Self {
        if let value = value, condition {
            node.upsert(Attribute(name: key, value: value))
        }
        return self
    }
    
    public func flagAttribute(_ key: String, _ value: String? = nil, _ condition: Bool = true) -> Self {
        if condition {
            node.upsert(Attribute(name: key, value: value ?? ""))
        }
        return self
    }
    
    public func attributeWithoutRemove(_ key: String, _ value: String?, _ adding: Bool = true) -> Self {
        if let value = value, adding {
            node.addAttribute(Attribute(name: key, value: value))
        }
        return self
    }
}

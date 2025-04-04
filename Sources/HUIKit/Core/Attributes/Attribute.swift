//
//  Attribute.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

struct Attribute: Hashable, Equatable, Sendable, Comparable, CustomStringConvertible {
    var name: String
    var value: String?

    init(name: String, value: String) {
        self.name = name
        self.value = value
    }

    init(_ name: String) {
        self.name = name
        self.value = nil
    }

    public var description: String {
        if let value {
            "\(name)=\"\(value)\""
        } else {
            name
        }
    }

    public static func < (lhs: Attribute, rhs: Attribute) -> Bool {
        lhs.description < rhs.description
    }
}

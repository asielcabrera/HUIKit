//
//  Attribute.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

public struct Attribute {

    public var key: String
    public var value: String?
    
    public init(key: String, value: String? = nil) {
        self.key = key
        self.value = value
    }
}

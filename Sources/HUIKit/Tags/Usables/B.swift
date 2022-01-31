//
//  B.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// Make some text bold (without marking it as important)
open class B: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "b", contents: contents))
    }
}

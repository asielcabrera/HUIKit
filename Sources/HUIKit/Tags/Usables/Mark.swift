//
//  Mark.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<mark>` tag defines text that should be marked or highlighted.
open class Mark: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "mark", contents: contents))
    }
}

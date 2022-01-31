//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<br>` tag inserts a single line break.
///
/// The `<br>` tag is useful for writing addresses or poems.
///
/// The `<br>` tag is an empty tag which means that it has no end tag.
open class Br: Tag {
    
    public init() {
        super.init(Node(type: .empty, name: "br"))
    }
}

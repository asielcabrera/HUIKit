//
//  Small.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<small>` tag defines smaller text (like copyright and other side-comments).
///
/// **Tip:** This tag is not deprecated, but it is possible to achieve richer (or the same) effect with CSS.
open class Small: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "small", contents: contents))
    }
}

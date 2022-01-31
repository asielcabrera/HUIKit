//
//  S.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<s>` tag specifies text that is no longer correct, accurate or relevant. The text will be displayed with a line through it.
///
/// The `<s>` tag should not be used to define deleted text in a document, use the `<del>` tag for that.
open class S: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "s", contents: contents))
    }
}

//
//  Caption.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<caption>` tag defines a table caption.
///
/// The `<caption>` tag must be inserted immediately after the `<table>` tag.
///
/// **Tip:** By default, a table caption will be center-aligned above a table. However, the CSS properties text-align and caption-side can be used to align and place the caption.
open class Caption: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "caption", contents: contents))
    }
}

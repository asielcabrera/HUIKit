//
//  I.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<i>` tag defines a part of text in an alternate voice or mood. The content inside is typically displayed in italic.
///
/// The `<i>` tag is often used to indicate a technical term, a phrase from another language, a thought, a ship name, etc.
///
/// Use the `<i>` element only when there is not a more appropriate semantic element, such as:
///
/// - `<em>` (emphasized text)
/// - `<strong>` (important text)
/// - `<mark>` (marked/highlighted text)
/// - `<cite>` (the title of a work)
/// - `<dfn>` (a definition term)
open class I: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "i", contents: contents))
    }
}

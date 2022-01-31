//
//  Pre.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<pre>` tag defines preformatted text.
///
/// Text in a `<pre>` element is displayed in a fixed-width font, and the text preserves both spaces and line breaks.
/// The text will be displayed exactly as written in the HTML source code.
open class Pre: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "pre", contents: contents))
    }
}

//
//  Sup.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<sup>` tag defines superscript text.
///
/// Superscript text appears half a character above the normal line, and is sometimes rendered in a smaller font.
/// Superscript text can be used for footnotes, like WWW[1].
///
/// **Tip:** Use the `<sub>` tag to define subscript text.
open class Sup: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "sup", contents: contents))
    }
}

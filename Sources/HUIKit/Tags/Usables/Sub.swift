//
//  Sub.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<sub>` tag defines subscript text.
///
/// Subscript text appears half a character below the normal line, and is sometimes rendered in a smaller font.
/// Subscript text can be used for chemical formulas, like H2O.
///
/// **Tip:** Use the `<sup>` tag to define superscripted text.
open class Sub: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "sub", contents: contents))
    }
}

//
//  Figcaption.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<figcaption>` tag defines a caption for a `<figure>` element.
///
/// The `<figcaption>` element can be placed as the first or last child of the `<figure>` element.
open class Figcaption: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "figcaption", contents: contents))
    }
}

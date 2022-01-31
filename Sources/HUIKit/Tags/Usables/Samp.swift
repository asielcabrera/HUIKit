//
//  Samp.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<samp>` tag is used to define sample output from a computer program. The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS.
open class Samp: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "samp", contents: contents))
    }
}

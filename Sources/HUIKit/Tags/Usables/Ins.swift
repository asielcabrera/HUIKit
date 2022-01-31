//
//  Ins.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<ins>` tag defines a text that has been inserted into a document. Browsers will usually underline inserted text.
///
/// **Tip:** Also look at the `<del>` tag to markup deleted text.
open class Ins: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "ins", contents: contents))
    }
}

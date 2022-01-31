//
//  Em.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<em>` tag is used to define emphasized text. The content inside is typically displayed in italic.
///
/// A screen reader will pronounce the words in `<em>` with an emphasis, using verbal stress.
open class Em: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "em", contents: contents))
    }
}

//
//  Comment.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The comment tag is used to insert comments in the source code.
///
/// `<!-- example comment -->`
///
/// Comments are not displayed in the browsers.
/// You can use comments to explain your code, which can help you when you edit the source code at a later date.
/// This is especially useful if you have a lot of code.
open class Comment: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .comment, contents: contents))
    }
}

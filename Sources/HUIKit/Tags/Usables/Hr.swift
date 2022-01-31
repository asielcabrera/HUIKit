//
//  Hr.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<hr>` tag defines a thematic break in an HTML page (e.g. a shift of topic).
///
/// The `<hr>` element is most often displayed as a horizontal rule that is used to separate content (or define a change) in an HTML page.
open class Hr: Tag {

    public init() {
        super.init(Node(type: .empty, name: "hr"))
    }
}

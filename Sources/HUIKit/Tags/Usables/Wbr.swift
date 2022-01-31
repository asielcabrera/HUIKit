//
//  Wbr.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<wbr>` (Word Break Opportunity) tag specifies where in a text it would be ok to add a line-break.
///
/// **Tip:** When a word is too long, the browser might break it at the wrong place. You can use the `<wbr>` element to add word break opportunities.
open class Wbr: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "wbr", contents: contents))
    }
}

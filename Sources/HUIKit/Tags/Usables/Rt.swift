//
//  Rt.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<rt>` tag defines an explanation or pronunciation of characters (for East Asian typography) in a ruby annotation.
///
/// Use `<rt>` together with `<ruby>` and `<rp>`: The `<ruby>` element consists of one or more characters that needs an explanation/pronunciation, and an `<rt>` element that gives that information, and an optional `<rp>` element that defines what to show for browsers that not support ruby annotations.
open class Rt: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "rt", contents: contents))
    }

}

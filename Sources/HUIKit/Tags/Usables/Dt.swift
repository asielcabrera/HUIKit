//
//  Dt.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<dt>` tag defines a term/name in a description list.
///
/// The `<dt>` tag is used in conjunction with `<dl>` (defines a description list) and `<dd>` (describes each term/name).
open class Dt: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "dt", contents: contents))
    }
}

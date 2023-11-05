//
//  Dd.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<dd>` tag is used to describe a term/name in a description list.
///
/// The `<dd>` tag is used in conjunction with `<dl>` (defines a description list) and `<dt>` (defines terms/names).
///
/// Inside a `<dd>` tag you can put paragraphs, line breaks, images, links, lists, etc.
open class Dd: Tag {

    public init(_ contents: String? = nil, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "dd", contents: contents), children: builder())
    }

    public convenience init(_ contents: String) {
        self.init(contents) {}
    }

}

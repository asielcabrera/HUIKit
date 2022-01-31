//
//  Nav.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<nav>` tag defines a set of navigation links.
/// 
/// Notice that NOT all links of a document should be inside a `<nav>` element. The `<nav>` element is intended only for major block of navigation links.
/// 
/// Browsers, such as screen readers for disabled users, can use this element to determine whether to omit the initial rendering of this content.
open class Nav: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "nav"), children: builder())
    }
}




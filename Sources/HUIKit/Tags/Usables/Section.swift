//
//  Section.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<section>` tag defines a section in a document.
open class Section: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "section"), children: builder())
    }
}

//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<figure>` tag specifies self-contained content, like illustrations, diagrams, photos, code listings, etc.
///
/// While the content of the `<figure>` element is related to the main flow, its position is independent of the main flow, and if removed it should not affect the flow of the document.
///
/// **Tip:** The `<figcaption>` element is used to add a caption for the `<figure>` element.
open class Figure: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "figure"), children: builder())
    }
}

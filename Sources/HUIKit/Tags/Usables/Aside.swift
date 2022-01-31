//
//  Aside.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<aside>` tag defines some content aside from the content it is placed in.
///
/// The aside content should be indirectly related to the surrounding content.
///
/// **Tip:** The `<aside>` content is often placed as a sidebar in a document.
///
/// **Note:** The `<aside>` element does not render as anything special in a browser.
/// However, you can use CSS to style the `<aside>` element (see example below).
open class Aside: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "aside"), children: builder())
    }
}



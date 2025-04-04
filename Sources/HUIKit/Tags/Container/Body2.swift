//
//  Body.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<body>` tag defines the document's body.
///
/// The `<body>` element contains all the contents of an HTML document, such as headings, paragraphs, images, hyperlinks, tables, lists, etc.
///
/// **Note:** There can only be one `<body>` element in an HTML document.
open class Body2: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "body"), children: builder())
    }

}

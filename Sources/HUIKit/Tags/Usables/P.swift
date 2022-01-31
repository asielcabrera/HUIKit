//
//  SwiftUIView.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<p>` tag defines a paragraph.
///
/// Browsers automatically add a single blank line before and after each `<p>` element.
///
/// **Tip:** Use CSS to style paragraphs.
open class P: Tag {
    
    public init(_ contents: String? = nil, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "p", contents: contents), children: builder())
    }

    public convenience init(_ contents: String) {
        self.init(contents) {}
    }
}

//
//  Ul.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<ul>` tag defines an unordered (bulleted) list.
/// 
/// Use the `<ul>` tag together with the `<li>` tag to create unordered lists.
/// 
/// **Tip:** Use CSS to style lists.
/// 
/// **Tip:** For ordered lists, use the `<ol>` tag.
open class Ul: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "ul"), children: builder())
    }
}

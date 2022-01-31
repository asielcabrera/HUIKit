//
//  Li.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<li>` tag defines a list item.
///
/// The `<li>` tag is used inside ordered lists(`<ol>`), unordered lists (`<ul>`), and in menu lists (`<menu>`).
///
/// In `<ul>` and `<menu>`, the list items will usually be displayed with bullet points.
///
/// In `<ol>`, the list items will usually be displayed with numbers or letters.
///
/// **Tip:** Use CSS to style lists.
open class Li: Tag {

    public init(_ contents: String? = nil, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "li", contents: contents), children: builder())
    }

    public convenience init(_ contents: String) {
        self.init(contents) {}
    }

}

public extension Li {
    
    /// Only for `<ol>` lists. Specifies the start value of a list item. The following list items will increment from that number
    func value(_ value: Int) -> Self {
        attribute("value", String(value))
    }
}


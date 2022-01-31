//
//  H5.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<h1>` to `<h6>` tags are used to define HTML headings.
///
/// `<h1>` defines the most important heading. `<h6>` defines the least important heading.
///
/// **Note:** Only use one `<h1>` per page - this should represent the main heading/subject for the whole page.
/// Also, do not skip heading levels - start with `<h1>`, then use `<h2>`, and so on.
open class H5: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "h5", contents: contents))
    }
}

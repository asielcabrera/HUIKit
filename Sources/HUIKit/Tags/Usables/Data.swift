//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<data>` tag is used to add a machine-readable translation of a given content.
///
/// This element provides both a machine-readable value for data processors, and a human-readable value for rendering in a browser.
///
/// **Tip:** If the content is time- or date-related, use the `<time>` element instead.
open class Data: Tag {
        
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "data", contents: contents))
    }
}

public extension Data {
    
    /// Specifies the machine-readable translation of the content of the element
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}

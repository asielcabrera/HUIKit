//
//  Del.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<del>` tag defines text that has been deleted from a document.
///
/// Browsers will usually strike a line through deleted text.
open class Del: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "del", contents: contents))
    }
}

public extension Del {
    
    /// Specifies a URL to a document that explains the reason why the text was deleted/changed
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
    
    /// Specifies the date and time of when the text was deleted/changed
    ///
    /// Format: `YYYY-MM-DDThh:mm:ssTZD`
    func datetime(_ value: String) -> Self {
        attribute("datetime", value)
    }
}

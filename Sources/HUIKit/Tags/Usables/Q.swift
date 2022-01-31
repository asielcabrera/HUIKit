//
//  Q.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<q>` tag defines a short quotation.
///
/// Browsers normally insert quotation marks around the quotation.
///
/// **Tip:** Use `<blockquote>` for long quotations.
open class Q: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "q", contents: contents))
    }
}

public extension Q {
    
    /// Specifies the source URL of the quote
    func cite(_ value: String) -> Self {
        attribute("cite", value)
    }
}

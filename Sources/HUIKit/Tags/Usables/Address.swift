//
//  Address.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<address>` tag defines the contact information for the author/owner of a document or an article.
///
/// The contact information can be an email address, URL, physical address, phone number, social media handle, etc.
///
/// The text in the `<address>` element usually renders in italic, and browsers will always add a line break before and after the `<address>` element.
open class Address: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "address", contents: contents))
    }
}

//
//  Cite.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<cite>` tag defines the title of a creative work (e.g. a book, a poem, a song, a movie, a painting, a sculpture, etc.).
///
/// **Note:** A person's name is not the title of a work.
///
/// The text in the `<cite>` element usually renders in italic.
open class Cite: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "cite", contents: contents))
    }
}

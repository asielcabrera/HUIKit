//
//  Abbr.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<abbr>` tag defines an abbreviation or an acronym, like "HTML", "CSS", "Mr.", "Dr.", "ASAP", "ATM".
///
/// **Tip:** Use the global title attribute to show the description for the abbreviation/acronym when you mouse over the element.
open class Abbr: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "abbr", contents: contents))
    }
}



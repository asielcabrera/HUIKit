//
//  Text.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import SwiftUI

/// a plain text node to write simple textual content into the html tree
open class Text: Tag {
    public init(_ contents: String) {
        super.init(Node(type: .group, contents: contents))
    }
}

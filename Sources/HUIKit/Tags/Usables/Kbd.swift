//
//  Kbd.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<kbd>` tag is used to define keyboard input. The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS (see example below).
open class Kbd: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "kbd", contents: contents))
    }
}

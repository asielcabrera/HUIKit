//
//  Code.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<code>` tag is used to define a piece of computer code. The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS (see example below).
///
/// Also look at:
/// - `<samp>`    Defines sample output from a computer program
/// - `<kbd>`    Defines keyboard input
/// - `<var>`    Defines a variable
/// - `<pre>`    Defines preformatted text
open class Code: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "code", contents: contents))
    }
}

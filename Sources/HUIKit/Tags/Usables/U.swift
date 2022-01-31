//
//  U.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<u>` tag represents some text that is unarticulated and styled differently from normal text, such as misspelled words or proper names in Chinese text.
///
/// The content inside is typically displayed with an underline.
/// You can change this with CSS (see example below).
///
/// **Tip:** Avoid using the `<u>` element where it could be confused for a hyperlink!
open class U: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "u", contents: contents))
    }
}

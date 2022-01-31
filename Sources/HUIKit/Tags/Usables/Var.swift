//
//  Var.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<var>` tag is used to defines a variable in programming or in a mathematical expression. The content inside is typically displayed in italic.
/// 
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS.
open class Var: Tag {

    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "var", contents: contents))
    }
}

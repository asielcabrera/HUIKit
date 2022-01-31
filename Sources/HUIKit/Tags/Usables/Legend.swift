//
//  Legend.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<legend>` tag defines a caption for the `<fieldset>` element.
open class Legend: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "legend", contents: contents))
    }
}

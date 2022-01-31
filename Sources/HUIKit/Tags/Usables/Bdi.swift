//
//  Bdi.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// BDI stands for Bi-Directional Isolation.
///
/// The `<bdi>` tag isolates a part of text that might be formatted in a different direction from other text outside it.
///
/// This element is useful when embedding user-generated content with an unknown text direction.
open class Bdi: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "bdi", contents: contents))
    }
}

//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// BDO stands for Bi-Directional Override.
///
/// The `<bdo>` tag is used to override the current text direction.
open class Bdo: Tag {

    public init(_ contents: String, dir: TextDirection = .ltr) {
        let node = Node(type: .standard, name: "bdo", contents: contents, attributes: [.init(key: "dir", value: dir.rawValue)])
        super.init(node)
    }
}

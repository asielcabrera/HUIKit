//
//  CustomTags.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import HUIKit

final class Root: Tag {
    init(_ contents: String? = nil) {
        super.init(Node(type: .standard, name: "root", contents: contents))
    }
}

final class Leaf: Tag {
    init(_ contents: String? = nil) {
        super.init(Node(type: .standard, name: "leaf", contents: contents))
    }
}

final class Branch: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "branch"), children: builder())
    }
}

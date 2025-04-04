//
//  Document.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

public struct Document2 {

    public enum `Type` {
        case unspecified
        case html
        case xml
        case custom(String)
    }

    public let type: `Type`
    public let root: Tag
    
    public init(_ type: `Type` = .unspecified, _ builder: () -> Tag) {
        self.type = type
        self.root = builder()
    }
}

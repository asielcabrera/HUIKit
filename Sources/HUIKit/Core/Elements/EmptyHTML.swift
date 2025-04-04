//
//  EmptyHTML.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//

public struct EmptyHTML: HTML {
    public nonisolated init() {}
    public var body: some HTML { self }
    
    public func render() -> String {
        ""
    }
}

//
//  TagBuilder.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

@resultBuilder
public enum TagBuilder {
    
    public static func buildBlock(_ components: [Tag]...) -> [Tag] {
        components.flatMap { $0 }
    }
    
    public static func buildBlock(_ components: [Tag]...) -> Tag {
        Tag(.init(type: .group), children: components.flatMap { $0 })
    }

    public static func buildExpression(_ expression: [Tag]) -> [Tag] {
        expression
    }
    
    public static func buildExpression(_ expression: Tag) -> [Tag] {
        [expression]
    }

    public static func buildEither(first component: [Tag]) -> [Tag] {
        component
    }

    public static func buildEither(second component: [Tag]) -> [Tag] {
        component
    }
    
    public static func buildOptional(_ component: [Tag]?) -> [Tag] {
        component ?? []
    }
    
    public static func buildArray(_ components: [[Tag]]) -> [Tag] {
        components.flatMap { $0 }
    }
}

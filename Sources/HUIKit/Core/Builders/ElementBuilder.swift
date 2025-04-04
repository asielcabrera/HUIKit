//
//  ElementBuilder.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//


typealias HeadElementBuilder = ElementBuilder<any HeadElement>
typealias DocumentElementBuilder = ElementBuilder<any DocumentElement>
//typealias StaticPageBuilder = ElementBuilder<any StaticPage>
//typealias ErrorPageBuilder = ElementBuilder<any ErrorPage>
//typealias ArticlePageBuilder = ElementBuilder<any ArticlePage>
//typealias ActionBuilder = ElementBuilder<any Action>

@resultBuilder
public struct ElementBuilder<T> {
    public static func buildBlock(_ components: [T]...) -> [T] {
        components.flatMap(\.self)
    }

    public static func buildArray(_ components: [[T]]) -> [T] {
        components.flatMap(\.self)
    }

    public static func buildExpression(_ expression: T) -> [T] {
        [expression]
    }

    public static func buildOptional(_ component: [T]?) -> [T] {
        component ?? []
    }

    public static func buildEither(first component: [T]) -> [T] {
        component
    }

    public static func buildEither(second component: [T]) -> [T] {
        component
    }
}

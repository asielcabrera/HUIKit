//
//  AnyHTML.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//


public struct AnyHTML: HTML, InlineElement, HeadElement, DocumentElement {
    public var body: some HTML { self }

    /// The standard set of control attributes for HTML elements.
//    public var attributes = CoreAttributes()

    /// Whether this HTML belongs to the framework.
    public var isPrimitive: Bool { true }

    /// The underlying HTML content, unattributed.
    var wrapped: any HTML

    /// Creates a new AnyHTML instance that wraps the given HTML content.
    /// If the content is already an AnyHTML instance, it will be unwrapped to prevent nesting.
    /// - Parameter content: The HTML content to wrap
    public init(_ content: any HTML) {
        var content = content
//        attributes.merge(content.attributes)
//        content.attributes.clear()

        if let anyHTML = content as? AnyHTML {
            wrapped = anyHTML.wrapped
        } else {
            wrapped = content
        }
    }

    /// The underlying HTML content, with attributes.
    var attributedContent: any HTML {
        var wrapped = wrapped
//        wrapped.attributes.merge(attributes)
        return wrapped
    }

    /// Renders the wrapped HTML content using the given publishing context
    /// - Returns: The rendered HTML string
    public func render() -> String {
        var wrapped = wrapped
//        wrapped.attributes.merge(attributes)
        return wrapped.render()
    }
}

//
//  HTMLCollection.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//


struct HTMLCollection: InlineElement, @preconcurrency Sequence {
    var body: some HTML { self }
    public var attributes = CoreAttributes()

    var isPrimitive: Bool { true }

    var elements: [any HTML] = []

    var attributedElements: [any HTML] {
        elements.map {
            var item: any HTML = $0
            item.attributes.merge(attributes)
            return item
        }
    }

    /// Creates a new HTML sequence using a result builder
    /// - Parameter content: A closure that returns HTML content
    init(@HTMLBuilder _ content: () -> some HTML) {
        let content = content()
        self.elements = flatten(content)
    }

    /// Creates a new HTML sequence from an array of elements
    /// - Parameter elements: The array of HTML elements to include
    init(_ elements: [any HTML]) {
        self.elements = elements.flatMap { flatten($0) }
    }

    /// Creates an iterator over the sequence's elements
    /// - Returns: An iterator that provides access to each HTML element
    func makeIterator() -> IndexingIterator<[any HTML]> {
        elements.makeIterator()
    }

    /// Renders all elements in the sequence into HTML
    /// - Returns: The combined HTML string of all elements
    func render() -> String {
        elements.map {
            var item: any HTML = $0
            item.attributes.merge(attributes)
            return item.render()
        }.joined()
    }

    /// Recursively flattens nested HTML content into a single array, deconstructing wrapper types.
    /// - Parameter content: The content to flatten
    /// - Returns: An array of unwrapped HTML elements
    private func flatten(_ content: any HTML) -> [any HTML] {
        if let anyHTML = content as? AnyHTML {
            flatten(anyHTML.attributedContent)
        } else if let collection = content as? HTMLCollection {
            collection.attributedElements.flatMap { flatten($0) }
        } else if content is EmptyHTML {
            []
        } else {
            [content]
        }
    }
}

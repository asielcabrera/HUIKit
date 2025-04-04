//
//  HTMLBuilder.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//

@MainActor
@resultBuilder
struct HTMLBuilder {
    public static func buildExpression<Content: HTML>(_ content: Content) -> some HTML {
        content
    }
    
    public static func buildBlock() -> some HTML {
        EmptyHTML()
    }
    
    public static func buildBlock<Content: HTML>(_ content: Content) -> some HTML {
        content
    }
    
    public static func buildBlock(_ components: [any HTML]) -> some HTML {
        HTMLCollection(components)
    }
    
    public static func buildArray(_ components: [any HTML]) -> some HTML {
        HTMLCollection(components)
    }
    
    public static func buildOptional<Content: HTML>(_ component: Content?) -> some HTML {
        if let component {
            AnyHTML(component)
        } else {
            AnyHTML(EmptyHTML())
        }
    }
    
    public static func buildEither<Content: HTML>(first component: Content) -> AnyHTML {
        AnyHTML(component)
    }
    
    public static func buildEither<Content: HTML>(second component: Content) -> AnyHTML {
        AnyHTML(component)
    }
    
    public static func buildIf<Content: HTML>(_ component: Content?) -> AnyHTML {
        if let component {
            AnyHTML(component)
        } else {
            AnyHTML(EmptyHTML())
        }
    }
    
    public static func buildArray<Content: HTML>(_ components: [Content]) -> some HTML {
        HTMLCollection(components)
    }
    
    public static func buildBlock(_ components: [any HTML]...) -> some HTML {
        HTMLCollection(components.flatMap(\.self))
    }
    
    //        public static func buildExpression(_ text: Text) -> some HTML {
    //            text
    //        }
    
    public static func buildExpression<Content: InlineElement>(_ content: Content) -> some HTML {
        content
    }
    
    public static func buildLimitedAvailability(_ component: some HTML) -> some HTML {
        component
    }
    
    public static func buildArray(_ components: [[any HTML]]) -> some HTML {
        HTMLCollection(components.flatMap(\.self))
    }
    
    public static func buildBlock<Content: HTML>(_ content: Content?) -> some HTML {
        if let content {
            AnyHTML(content)
        } else {
            AnyHTML(EmptyHTML())
        }
    }
    
    public static func buildBlock<Content: HTML>(_ components: (any HTML)?...) -> some HTML {
        HTMLCollection(components.compactMap(\.self))
    }
}
extension HTMLBuilder {
    public static func buildPartialBlock<Content>(first content: Content) -> Content where Content: HTML {
        content
    }
    
    public static func buildPartialBlock<C0: HTML, C1: HTML>(accumulated: C0, next: C1) -> some HTML {
        if var current = accumulated as? HTMLCollection {
            current.elements.append(next)
            return current
        } else {
            return HTMLCollection([accumulated, next])
        }
    }
}

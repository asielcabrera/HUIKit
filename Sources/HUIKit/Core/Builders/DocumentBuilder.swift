//
//  DocumentBuilder.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//

@MainActor
@resultBuilder
public struct DocumentBuilder {
    public static func buildBlock(_ components: any DocumentElement...) -> some HTML {
        Document {
//            if !components.contains(where: { $0 is Head }) {
//                Head()
//            }
            for component in components {
                component
            }
        }
    }
}

extension DocumentBuilder {
    static func buildBlock(_ component: Document) -> Document {
        component
    }
}

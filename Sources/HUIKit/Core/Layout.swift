//
//  Layout.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//


@MainActor
public protocol Layout {
    associatedtype Document: HTML
    
    @DocumentBuilder var body: Document { get }
}

//public extension Layout {
//    var content: some HTML {
//        Section(PublishingContext.shared.environment.pageContent)
//    }
//}

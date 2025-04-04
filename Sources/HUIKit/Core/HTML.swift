//
//  Html.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//

@MainActor
public protocol HTML: CustomStringConvertible, Sendable {
    associatedtype Body: HTML
    @HTMLBuilder var body: Body { get }
    
    var isPrimitive: Bool { get }
    var attributes: CoreAttributes { get set }
    
    
    func render() -> String
}

public extension HTML {
    nonisolated var description: String {
        MainActor.assumeIsolated {
            self.render()
        }
    }
    
    var attributes: CoreAttributes {
        get { CoreAttributes() }
        set {}
    }
    var isPrimitive: Bool { false }
    
    func render() -> String {
        body.render()
    }
}

//
//  Document.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//

struct Document: HTML {
    var body: some HTML { self }
    
    public var attributes = CoreAttributes()
    var isPrimitive: Bool { true }
    
    //    private let language: Language
    private let contents: [any DocumentElement]
    
    init(@DocumentElementBuilder contents: () -> [any DocumentElement]) {
        self.contents = contents()
    }
    
    func render() -> String {
        var attributes = attributes
//        attributes.append(customAttributes: .init(name: "lang", value: language.rawValue))
        var output = "<!doctype html>"
        output += "<html \(attributes)>"
        output += contents.map { $0.render() }.joined()
        output += "</html>"
        return output
    }
}

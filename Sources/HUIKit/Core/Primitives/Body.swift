//
//  Body.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//

public struct Body: DocumentElement {
    public var body: some HTML { self }
    
    var content: any HTML
    
    init(@HTMLBuilder _ content: () -> some HTML) {
        self.content = content()
    }
    
    public func render() -> String {

        let output = content.render()
        
      
        return "<body>\(output)</body>"

    }
}

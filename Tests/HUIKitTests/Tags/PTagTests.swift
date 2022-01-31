//
//  PTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class PTagTests: XCTestCase {

    func testParagraph() {
        let tag = P("Hello, world!")
        
        XCTAssertEqual(DocumentRenderer(minify: true).render(Document { tag } ), #"<p>Hello, world!</p>"#)
    }
    
    func testParagraphWithLink() {
        let tag = P {
            Text("lorem")
            A("Hello, world!")
                .href("/")
            Text("ipsum")
        }
        
        XCTAssertEqual(DocumentRenderer(minify: true).render(Document { tag } ), #"<p>lorem<a href="/">Hello, world!</a>ipsum</p>"#)
    }
}

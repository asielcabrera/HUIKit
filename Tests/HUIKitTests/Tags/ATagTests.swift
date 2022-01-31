//
//  ATagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class ATagTests: XCTestCase {

    func testA() {
        
        let doc = Document {
            A {
                P("Hello")
            }
            .href("world")
        }
        XCTAssertEqual(DocumentRenderer(minify: true).render(doc), #"<a href="world"><p>Hello</p></a>"#)
    }

}

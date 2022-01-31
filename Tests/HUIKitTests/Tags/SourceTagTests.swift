//
//  SourceTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class SourceTagTests: XCTestCase {

    func testColorScheme() {
        let doc = Document {
            Source()
                .srcset("img.png")
                .media([.prefersColorScheme(.dark)])
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<source srcset="img.png" media="(prefers-color-scheme: dark)">"#, html)
    }
    
   

}

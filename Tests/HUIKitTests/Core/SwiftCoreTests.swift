//
//  SwiftCoreTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class SwiftCoreTests: XCTestCase {

    func testXmlDocument() {
        let doc = Document(.xml) {
            Root()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <?xml version="1.0" encoding="utf-8" ?>
                            <root></root>
                            """)
    }
    
    func testCustomAttribute() {
        let doc = Document(.xml) {
            Root()
                .attribute("foo", "bar")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <?xml version="1.0" encoding="utf-8" ?>
                            <root foo="bar"></root>
                            """)
    }
    
    func testCustomNilAttribute() {
        let doc = Document(.xml) {
            Root()
                .attribute("foo", nil)
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <?xml version="1.0" encoding="utf-8" ?>
                            <root></root>
                            """)
    }
}

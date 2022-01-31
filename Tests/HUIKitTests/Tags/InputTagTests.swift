//
//  InputTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class InputTagTests: XCTestCase {

    func testCheckedInput() {
        let doc = Document {
            Input()
                .type(.checkbox)
                .checked()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <input type="checkbox" checked>
                            """)
    }
    
    func testUncheckedInput() {
        let doc = Document {
            Input()
                .type(.checkbox)
                // first add checked attribute
                .checked()
                // this should remove the checked attribute
                .checked(false)
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <input type="checkbox">
                            """)
    }
    
    func testKey() {
        let doc = Document {
            Input()
                .type(.text)
                .key("email")
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <input type="text" id="email" name="email">
                            """)
    }
   
    
}

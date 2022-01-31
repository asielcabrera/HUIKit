//
//  LabelTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class LabelTagTests: XCTestCase {

    func testLabelChildren() {
        let isRequired = true
        let doc = Document(.html) {
            Label("foo") {
                Span("(bar)").class("more")
                if isRequired {
                    Span("*").class("required")
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <!DOCTYPE html>
                            <label>foo
                                <span class="more">(bar)</span>
                                <span class="required">*</span>
                            </label>
                            """#)
    }
   
    
}

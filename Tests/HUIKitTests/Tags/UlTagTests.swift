//
//  UlTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class UlTagTests: XCTestCase {

    func testUl() {
        let doc = Document {
            Ul {
                Li("a")
                Li("b")
                Li {
                    P("c")
                }
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <ul>
                                <li>a</li>
                                <li>b</li>
                                <li>
                                    <p>c</p>
                                </li>
                            </ul>
                            """#)
    }
   
    
}

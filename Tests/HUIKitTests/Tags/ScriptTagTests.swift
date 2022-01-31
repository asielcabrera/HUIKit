//
//  ScriptTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class ScriptTagTests: XCTestCase {

    func testScript() {
        let doc = Document(.html) {
            Script()
                .src("./js/main.js")
                .async()
        }

        XCTAssertEqual(DocumentRenderer().render(doc), #"""
                            <!DOCTYPE html>
                            <script src="./js/main.js" async></script>
                            """#)
    }
    
}

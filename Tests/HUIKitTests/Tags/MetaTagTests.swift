//
//  MetaTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class MetaTagTests: XCTestCase {

    func testColorScheme() {
        let doc = Document {
            Meta()
                .name(.colorScheme)
                .content("light dark")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<meta name="color-scheme" content="light dark">"#, html)
    }
    
    func testMediaColorScheme() {
        let doc = Document {
            Meta()
                .name(.themeColor)
                .content("#fff")
                .media(.prefersColorScheme(.light))
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(##"<meta name="theme-color" content="#fff" media="(prefers-color-scheme: light)">"##, html)
    }
    
    func testAppleStatusBarStyle() {
        let doc = Document {
            Meta()
                .name(.appleMobileWebAppStatusBarStyle)
                .content("default")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(##"<meta name="apple-mobile-web-app-status-bar-style" content="default">"##, html)
    }

}

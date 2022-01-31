//
//  LinkTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class LinkTagTests: XCTestCase {

    func testMediaQuery() {
        let doc = Document {
            Link(rel: .appleTouchStartupImage)
                .media([
                    .screen,
                    .deviceWidth(px: 320),
                    .deviceHeight(px: 568),
                    .webkitDevicePixelRatio(2),
                    .orientation(.portrait)
                ])
                .href("/img/apple/splash/1136x640.png")
        }
        let html = DocumentRenderer(minify: true).render(doc)
        XCTAssertEqual(#"<link rel="apple-touch-startup-image" media="screen and (device-width: 320px) and (device-height: 568px) and (-webkit-device-pixel-ratio: 2) and (orientation: portrait)" href="/img/apple/splash/1136x640.png">"#, html)
    }
    

}

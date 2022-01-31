//
//  TagBuilderTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class TagBuilderTests: XCTestCase {
        
    func testOptionalBuilder() {
        let condition: Bool = false
        let doc = Document {
            Branch {
                if condition {
                    Leaf("a")
                }
                Leaf("b")
            }
        }
        
        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>b</leaf>
                            </branch>
                            """)
    }
    
    func testEitherFirstBuilder() {
        let condition: Bool = true
        let doc = Document {
            Branch {
                if condition {
                    Leaf("a")
                }
                else {
                    Leaf("b")
                }
                Leaf("c")
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>a</leaf>
                                <leaf>c</leaf>
                            </branch>
                            """)
        
    }
    
    func testEitherSecondBuilder() {
        let condition: Bool = false
        let doc = Document {
            Branch {
                if condition {
                    Leaf("a")
                }
                else {
                    Leaf("b")
                }
                Leaf("c")
            }
        }
        
        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>b</leaf>
                                <leaf>c</leaf>
                            </branch>
                            """)
    }
    
//    func testArrayBuilder() {
//        let doc = Document {
//            Branch {
//                for i in 0..<3 {
//                    Leaf(String(i + 1))
//                }
//            }
//        }
//
//        XCTAssertEqual(DocumentRenderer().render(doc), """
//                            <branch>
//                                <leaf>1</leaf>
//                                <leaf>2</leaf>
//                                <leaf>3</leaf>
//                            </branch>
//                            """)
//    }
    
    func testGroupBuilder() {
        let doc = Document {
            Branch {
                Leaf("Lorem ipsum")
                Leaf("Dolor sit amet")
            }
        }

        XCTAssertEqual(DocumentRenderer().render(doc), """
                            <branch>
                                <leaf>Lorem ipsum</leaf>
                                <leaf>Dolor sit amet</leaf>
                            </branch>
                            """)
    }
    
    
}


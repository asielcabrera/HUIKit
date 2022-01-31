//
//  FormTagTests.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

import XCTest
@testable import HUIKit

final class FormTagTests: XCTestCase {

    func testGroup() {
        let items = ["a", "b", "c"]
        let doc = Document {
            Form {
                items.map { P($0) }
            }
        }
        XCTAssertEqual(DocumentRenderer(minify: true).render(doc), #"<form><p>a</p><p>b</p><p>c</p></form>"#)
    }

    func testForm() {
        let doc = Document(.html) {
            Form {
                Section {
                    Label("Email address")
                        .for("email")
                    Input()
                        .type(.email)
                        .id("email")
                        .placeholder("Your email address")
                        .value("root@localhost.com")
                }
                Section {
                    Label("Password")
                        .for("password")
                    Input()
                        .type(.password)
                        .id("password")
                        .placeholder("Your password")
                }
                Section {
                    Input()
                        .type(.submit)
                        .value("Sign in")
                }
            }
            .enctype(.multipart)
            .method(.post)
            .action("/sign-in/")
        }

        XCTAssertEqual(DocumentRenderer(minify: true).render(doc), #"<!DOCTYPE html><form enctype="multipart/form-data" method="post" action="/sign-in/"><section><label for="email">Email address</label><input type="email" id="email" placeholder="Your email address" value="root@localhost.com"></section><section><label for="password">Password</label><input type="password" id="password" placeholder="Your password"></section><section><input type="submit" value="Sign in"></section></form>"#)

    }
    
}

//
// DefaultLayout.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

/// The layout you assigned to `Site`'s `layout` property.
public struct DefaultLayout: Layout {
    public var body: some HTML {
        PublishingContext.shared.site.layout.body as! HUIKit.Document
    }
}

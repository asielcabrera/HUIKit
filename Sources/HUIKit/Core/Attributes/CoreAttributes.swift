//
//  CoreAttributes.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//


import Foundation
import OrderedCollections

public typealias OrderedSet<Element: Hashable> = OrderedCollections.OrderedSet<Element>
public typealias OrderedDictionary<Key: Hashable, Value> = OrderedCollections.OrderedDictionary<Key, Value>
public typealias UUID = Foundation.UUID
public typealias URL = Foundation.URL
public typealias Date = Foundation.Date

public struct CoreAttributes: Equatable, Sendable, CustomStringConvertible {
    var id = ""

    var aria = OrderedSet<Attribute>()
    var classes = OrderedSet<String>()
//    var styles = OrderedSet<InlineStyle>()
    var data = OrderedSet<Attribute>()
//    var events = OrderedSet<Event>()
    var customAttributes = OrderedSet<Attribute>()
    var isEmpty: Bool { self == CoreAttributes() }

    public var description: String {
        "\(idString)\(customAttributeString)\(classString)\(dataString)\(ariaString)"
//        "\(idString)\(customAttributeString)\(classString)\(styleString)\(dataString)\(ariaString)\(eventString)"
    }

    /// The ID of this element, if set.
    var idString: String {
        if id.isEmpty {
            ""
        } else {
            " id=\"\(id)\""
        }
    }

    /// All aria attributes for this element collapsed down to a string.
    var ariaString: String {
        if aria.isEmpty {
            return ""
        } else {
            var output = ""

            // Arium? Look, just give me this one…
            for arium in aria {
                output += " " + arium.description
            }

            return output
        }
    }

    /// All CSS classes for this element collapsed down to a string.
    var classString: String {
        if classes.isEmpty {
            ""
        } else {
            " class=\"\(classes.joined(separator: " "))\""
        }
    }

    /// All inline CSS styles for this element collapsed down to a string.
//    var styleString: String {
//        if styles.isEmpty {
//            return ""
//        } else {
//            let stringified = styles.map(\.description).joined(separator: "; ")
//            return " style=\"\(stringified)\""
//        }
//    }

    /// All data attributes for this element collapsed down to a string.
    var dataString: String {
        if data.isEmpty {
            return ""
        } else {
            var output = ""

            for datum in data {
                output += " data-\(datum)"
            }

            return output
        }
    }

    /// All events for this element, collapsed to down to a string.
//    var eventString: String {
//        var result = ""
//
//        for event in events where event.actions.isEmpty == false {
//            let actions = event.actions.map { $0.compile() }.joined(separator: "; ")
//
//            result += " \(event.name)=\"\(actions)\""
//        }
//
//        return result
//    }

    /// All custom attributes for this element collapsed down to a string.
    var customAttributeString: String {
        if customAttributes.isEmpty {
            return ""
        } else {
            var output = ""

            for attribute in customAttributes {
                output += " " + attribute.description
            }

            return output
        }
    }

    mutating func append(classes: some Collection<String>) {
        self.classes.formUnion(classes)
    }

    mutating func append(classes: String...) {
        self.classes.formUnion(classes)
    }

    func appending(classes: some Collection<String>) -> CoreAttributes {
        var copy = self
        copy.classes.formUnion(classes)
        return copy
    }

    func appending(aria: Attribute?) -> CoreAttributes {
        guard let aria else { return self }

        var copy = self
        copy.aria.append(aria)
        return copy
    }

//    mutating func append(styles: InlineStyle...) {
//        self.styles.formUnion(styles)
//    }

//    mutating func append(style: Property, value: String) {
//        styles.append(InlineStyle(style, value: value))
//    }

    mutating func append(dataAttributes: Attribute...) {
        data.formUnion(dataAttributes)
    }

    mutating func append(customAttributes: Attribute...) {
        self.customAttributes.formUnion(customAttributes)
    }

//    mutating func append(styles newStyles: some Collection<InlineStyle>) {
//        var styles = self.styles
//        styles.formUnion(newStyles)
//        self.styles = styles
//    }

    mutating func clear() {
        self = CoreAttributes()
    }

    mutating func remove(classes: String...) {
        let classes = self.classes.subtracting(classes)
        self.classes = classes
    }
//
//    mutating func remove(styles properties: Property...) {
//        var styles = Array(self.styles)
//        for property in properties {
//            styles.removeAll(where: { $0.property == property.rawValue })
//        }
//        self.styles = OrderedSet(styles)
//    }
//
//    func get(styles properties: Property...) -> [InlineStyle] {
//        properties.compactMap { property in
//            if let style = styles.first(where: { $0.property == property.rawValue }) {
//                return style
//            }
//            return nil
//        }
//    }

    func merging(_ other: CoreAttributes) -> CoreAttributes {
        var result = self

        if !other.id.isEmpty {
            result.id = other.id
        }

        result.aria.formUnion(other.aria)
        result.classes.formUnion(other.classes)
//        result.styles.formUnion(other.styles)
        result.data.formUnion(other.data)
//        result.events.formUnion(other.events)
        result.customAttributes.formUnion(other.customAttributes)

        return result
    }

    mutating func merge(_ other: CoreAttributes) {
        if !other.id.isEmpty {
            id = other.id
        }

        aria.formUnion(other.aria)
        classes.formUnion(other.classes)
//        styles.formUnion(other.styles)
        data.formUnion(other.data)
//        events.formUnion(other.events)
        customAttributes.formUnion(other.customAttributes)
    }
}

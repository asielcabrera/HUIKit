//
//  Map.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<map>` tag is used to define an image map. An image map is an image with clickable areas.
///
/// The required name attribute of the `<map>` element is associated with the `<img>`'s usemap attribute and creates a relationship between the image and the map.
///
/// The `<map>` element contains a number of `<area>` elements, that defines the clickable areas in the image map.
open class Map: Tag {

    public init(name: String, @TagBuilder _ builder: () -> [Tag]) {
        let node = Node(type: .standard, name: "map", attributes: [Attribute(name: "name", value: name)])
        super.init(node, children: builder())
    }
}

public extension Map {
    
    /// Specifies the name of an <input> element
    func name(_ value: String) -> Self {
        attribute("name", value)
    }
}



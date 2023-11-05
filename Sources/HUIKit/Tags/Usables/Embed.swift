//
//  Embed.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<embed>` tag defines a container for an external resource, such as a web page, a picture, a media player, or a plug-in application.
open class Embed: Tag {
    
    public init() {
        super.init(Node(type: .empty, name: "embed"))
    }
}


public extension Embed {

    /// Specifies the height of the embedded content
    func height(_ value: Double) -> Self {
        attribute("height", String(value))
    }
    
    /// Specifies the address of the external file to embed
    func src(_ value: String) -> Self {
        attribute("src", value)
    }
    
    /// Specifies the media type of the embedded content
    func type(_ value: String) -> Self {
        attribute("type", value)
    }
    
    /// Specifies the width of the embedded content
    func width(_ value: Double) -> Self {
        attribute("width", String(value))
    }
}

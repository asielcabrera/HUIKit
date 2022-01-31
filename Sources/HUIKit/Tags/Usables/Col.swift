//
//  Col.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<col>` tag specifies column properties for each column within a `<colgroup>` element.
///
/// The `<col>` tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
open class Col: Tag {
    
    public init() {
        super.init(Node(type: .empty, name: "col"))
    }
}

public extension Col {
    
    /// Sets the number of columns a `<col>` element should span
    func span(_ value: Int) -> Self {
        attribute("span", String(value))
    }
}

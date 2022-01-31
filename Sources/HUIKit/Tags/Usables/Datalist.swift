//
//  Datalist.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<datalist>` tag specifies a list of pre-defined options for an `<input>` element.
///
/// The `<datalist>` tag is used to provide an "autocomplete" feature for `<input>` elements. Users will see a drop-down list of pre-defined options as they input data.
///
/// The `<datalist>` element's id attribute must be equal to the `<input>` element's list attribute (this binds them together).
open class Datalist: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "datalist"), children: builder())
    }
}

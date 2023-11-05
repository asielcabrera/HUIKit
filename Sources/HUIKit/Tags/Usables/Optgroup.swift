//
//  Optgroup.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<optgroup>` tag is used to group related options in a `<select>` element (drop-down list).
/// 
/// If you have a long list of options, groups of related options are easier to handle for a user.
open class Optgroup: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "optgroup"), children: builder())
    }
}

public extension Optgroup {
    
    /// Specifies that an option-group should be disabled
    func disabled(_ condition: Bool = true) -> Self {
        flagAttribute("disabled", nil, condition)
    }
    
    /// Specifies a label for an option-group
    func label(_ value: String) -> Self {
        attribute("label", value)
    }
}

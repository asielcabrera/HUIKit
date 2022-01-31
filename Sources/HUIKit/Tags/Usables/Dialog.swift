//
//  Dialog.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<dialog>` tag defines a dialog box or subwindow.
///
/// The `<dialog>` element makes it easy to create popup dialogs and modals on a web page.
open class Dialog: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "dialog", contents: contents))
    }
}

public extension Dialog {
    
    /// Specifies that the dialog element is active and that the user can interact with it
    func open(_ condition: Bool = true) -> Self {
        flagAttribute("open", nil, condition)
    }
}

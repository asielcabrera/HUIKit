//
//  Progress.swift
// 
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<progress>` tag represents the completion progress of a task.
/// 
/// **Tip:** Always add the `<label>` tag for best accessibility practices!
open class Progress: Tag {
    
    public init(_ contents: String) {
        super.init(Node(type: .standard, name: "progress", contents: contents))
    }
}

public extension Progress {
    
    /// Specifies how much work the task requires in total. Default value is 1
    func max(_ value: String) -> Self {
        attribute("max", value)
    }
    
    /// Specifies how much of the task has been completed
    func value(_ value: String) -> Self {
        attribute("value", value)
    }
}

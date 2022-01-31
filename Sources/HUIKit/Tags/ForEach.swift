//
//  ForEach.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// an iterator node to iterate over a collection of data
open class ForEach<Data> : Tag where Data : RandomAccessCollection {
    public init(_ data: Data, @TagBuilder _ builder: @escaping (Data.Element) -> Tag) {
        super.init(Node(type: .group), children: data.map { builder($0) })
    }
}




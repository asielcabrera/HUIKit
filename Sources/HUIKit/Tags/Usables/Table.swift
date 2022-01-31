//
//  Table.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 1/31/22.
//

/// The `<table>` tag defines an HTML table.
/// 
/// An HTML table consists of one `<table>` element and one or more `<tr>`, `<th>`, and `<td>` elements.
/// 
/// The `<tr>` element defines a table row, the `<th>` element defines a table header, and the `<td>` element defines a table cell.
/// 
/// An HTML table may also include `<caption>`, `<colgroup>`, `<thead>`, `<tfoot>`, and `<tbody>` elements.
open class Table: Tag {
    
    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "table"), children: builder())
    }

}

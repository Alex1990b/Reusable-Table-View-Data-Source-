//
//  TableViewGenerator.swift
//  ReusableTableView
//
//  Created by Sasha on 11.09.18.
//  Copyright © 2018 Sasha. All rights reserved.
//

import UIKit

final class TableViewGenerator<T: TableViewGenerable>: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    private var responder: T
    private var dataSource: [T.Item]!
    private var tableView: UITableView!
    
    
    init(tableView: UITableView, dataSource: [T.Item], responder: T) {
        self.tableView = tableView
        self.dataSource = dataSource
        self.responder = responder
        super.init()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        responder.didSelect(item: dataSource[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: T.Cell.reuseIdentifier, for: indexPath) as? T.Cell   else { return UITableViewCell() }
        
        let item = dataSource[indexPath.row]
        cell.configure(item, at: indexPath)
        
        return cell
    }
}

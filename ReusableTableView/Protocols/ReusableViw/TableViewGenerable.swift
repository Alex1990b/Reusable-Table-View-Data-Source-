//
//  TableViewGenerable.swift
//  ReusableTableView
//
//  Created by Sasha on 11.09.18.
//  Copyright © 2018 Sasha. All rights reserved.
//

import UIKit

protocol TableViewGenerable {
    associatedtype Item: TableViewDataSource
    associatedtype Cell: UITableViewCell & ConfigurableCell where Cell.T == Item
    var tableViewGenerator: TableViewGenerator<Self>! { get set }
    
    func didSelect(item: Item)
}


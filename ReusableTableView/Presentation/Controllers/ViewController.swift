//
//  ViewController.swift
//  ReusableTableView
//
//  Created by Sasha on 11.09.18.
//  Copyright © 2018 Sasha. All rights reserved.
//

import UIKit

final class ViewController: UIViewController, TableViewGenerable {
    typealias Item = Person
    typealias Cell = PersonTableViewCell
    
    @IBOutlet weak var tableView: UITableView!
    
    private var persons = [Person]()
    var tableViewGenerator: TableViewGenerator<ViewController>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(PersonTableViewCell.self)
        
        persons.append(contentsOf: [Person(name: "Sasha", age: 28), Person(name: "Alex", age: 32), Person(name: "Semen", age: 15), Person(name: "Petro", age: 32), Person(name: "Oleg", age: 22)])
        tableViewGenerator = TableViewGenerator<ViewController>(tableView: tableView, dataSource: persons, responder: self)
    }
    
    func didSelect(item: Person) {
        print(item)
    }
    
    
}


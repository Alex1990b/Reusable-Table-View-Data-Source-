//
//  PersonTableViewCell.swift
//  ReusableTableView
//
//  Created by Sasha on 11.09.18.
//  Copyright © 2018 Sasha. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell, ConfigurableCell {
    typealias T = Person
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    func configure(_ item: Person, at indexPath: IndexPath) {
        nameLabel.text = item.name
        ageLabel.text = String(item.age)
    }
}

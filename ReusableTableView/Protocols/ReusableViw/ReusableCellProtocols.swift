//
//  ReusableCell.swift
//  ReusableTableView
//
//  Created by Sasha on 11.09.18.
//  Copyright © 2018 Sasha. All rights reserved.
//

import Foundation

protocol  TableViewDataSource {}

protocol ReusableCell {
    static var reuseIdentifier: String { get }
    static var nibName: String { get }
}

extension ReusableCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
    
    static var nibName: String {
        return String(describing: self)
    }
}


protocol ConfigurableCell: ReusableCell {
    
    associatedtype T
    func configure(_ item: T, at indexPath: IndexPath)
}




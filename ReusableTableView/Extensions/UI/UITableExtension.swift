//
//  UITableExtension.swift
//  ReusableTableView
//
//  Created by Sasha on 11.09.18.
//  Copyright © 2018 Sasha. All rights reserved.
//

import UIKit

extension UITableView {
    
    
    func register<T: UITableViewCell>(_ : T.Type) where T: ReusableCell {
        
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    
    func dequeueReusableCell<T: UITableViewCell & ReusableCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        
        return cell
    }
}

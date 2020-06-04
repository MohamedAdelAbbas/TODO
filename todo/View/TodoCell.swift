//
//  TodoCell.swift
//  todo
//
//  Created by Mohamed Adel on 6/4/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class TodoCell: UITableViewCell {

    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var priorityView: UIView!
    
    
    func updateCell(todo: Todo){
        itemLabel.text = todo.item
        switch todo.priority {
        case 0:
            priorityView.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            break
        case 1:
            priorityView.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            break
        default:
            priorityView.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        
    }
}

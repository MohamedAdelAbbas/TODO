//
//  ToDo.swift
//  todo
//
//  Created by Mohamed Adel on 6/4/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import Foundation

struct Todos: Codable {
    let items : Array<Todo>
    
}

struct Todo: Codable {
    let item: String?
    let priority: Int?
    
}

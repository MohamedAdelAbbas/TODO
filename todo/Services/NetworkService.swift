//
//  NetworkService.swift
//  todo
//
//  Created by Mohamed Adel on 6/4/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import Foundation
class NetworkService {
    static let shared = NetworkService()
    
    let URL_BASE = "http://localhost:3003"
    let URL_ADD_TODO = "/add"
    
    let session = URLSession(configuration: .default)
    
    func getTodos() {
        let url = URL(string: "\(URL_BASE)")!
        let task = session.dataTask(with: url) { (data, response, error) in
            debugPrint(data)
        }
        task.resume()
    }
    
    func addTodo(todo: ToDo){
        
    }
}

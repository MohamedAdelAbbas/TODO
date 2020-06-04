//
//  ViewController.swift
//  todo
//
//  Created by Mohamed Adel on 6/4/20.
//  Copyright © 2020 Mohamed Adel. All rights reserved.
//

import UIKit

class TodoVC: UIViewController {

    @IBOutlet weak var todoItemTF: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    @IBOutlet weak var todoTable: UITableView!
    
    var todos = Array<Todo>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getTodos()
        
     }

    func getTodos(){
        
        NetworkService.shared.getTodos(onSuccess: { (todos) in
             self.todos = todos.items
             self.todoTable.reloadData()
        }) { (errorMessage) in
            debugPrint(errorMessage)
        }
    }
    

    @IBAction func addTodoPressed(_ sender: UIButton) {
        guard let todoItem = todoItemTF.text else {
            //show error "you must enter a todo item"
            return
        }
        
        let todo = Todo(item: todoItem, priority: prioritySegment.selectedSegmentIndex)
        NetworkService.shared.addTodo(todo: todo, onSuccess: { (todos) in
            self.todoItemTF.text = ""
            self.todos = todos.items
            self.todoTable.reloadData()
        }) { (errorMessage) in
            //show any errors to user on POST
            debugPrint(errorMessage)
        }
    }
}

extension TodoVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell") as? TodoCell {
            cell.updateCell(todo: todos[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    
}

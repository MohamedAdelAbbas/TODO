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
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkService.shared.getTodos()
     }


    @IBAction func addTodoPressed(_ sender: UIButton) {
    }
}

extension TodoVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

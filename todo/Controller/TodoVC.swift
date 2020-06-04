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
        // Do any additional setup after loading the view.
    }


    @IBAction func addTodoPressed(_ sender: UIButton) {
    }
}


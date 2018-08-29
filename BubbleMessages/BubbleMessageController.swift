//
//  BubbleMessageControllerTableViewController.swift
//  BubbleMessages
//
//  Created by Mihai Deaconu on 29/08/2018.
//  Copyright © 2018 Mihai Deaconu. All rights reserved.
//

import UIKit

class BubbleMessageController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension BubbleMessageController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
        cell.textLabel?.text = "Test"
        return cell
    }
}

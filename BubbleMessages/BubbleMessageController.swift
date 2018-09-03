//
//  BubbleMessageControllerTableViewController.swift
//  BubbleMessages
//
//  Created by Mihai Deaconu on 29/08/2018.
//  Copyright © 2018 Mihai Deaconu. All rights reserved.
//

import UIKit

struct Message {
    let label: String
}

class BubbleMessageController: UITableViewController {
    
    fileprivate let messages = [
        Message(label: "This is a long string that should be broken on multiple lines in order to be nicer displayed"),
        Message(label: "This is a short message")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Messages"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.tableView.register(MessageCell.self, forCellReuseIdentifier: "idCell")
    }
}

extension BubbleMessageController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! MessageCell
        cell.messageLabel.text = messages[indexPath.row].label
//        cell.setValue(with: messages[indexPath.row].label)
        
        return cell
    }
}

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
    
    fileprivate var messages: [Message] {
        get {
            let tmp: [Message] = [
                Message(label: "This is a long string that should be broken on multiple lines in order to be nicer displayed"),
                Message(label: "This is a short message")
            ]
            return tmp
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension BubbleMessageController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath) as! MessageCell
        cell.setValue(with: messages[indexPath.row].label)
        
        return cell
    }
}

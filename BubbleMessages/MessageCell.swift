//
//  MessageCell.swift
//  BubbleMessages
//
//  Created by Mihai Deaconu on 30/08/2018.
//  Copyright © 2018 Mihai Deaconu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageLabel: UILabel!
    
    public func setValue(with value: String) {
        self.messageLabel.text = value
        self.messageLabel.numberOfLines = 0
    }
}

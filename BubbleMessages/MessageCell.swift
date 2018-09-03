//
//  MessageCell.swift
//  BubbleMessages
//
//  Created by Mihai Deaconu on 30/08/2018.
//  Copyright © 2018 Mihai Deaconu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    var messageLabel: UILabel = UILabel()
    var messageView: UIView = UIView()
    
    var leadingConstraint: NSLayoutConstraint!
    var trailingConstraint: NSLayoutConstraint!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .clear
        self.messageView.backgroundColor = UIColor.green
        self.messageView.layer.cornerRadius = 15
        self.messageView.translatesAutoresizingMaskIntoConstraints = false
        self.messageLabel.translatesAutoresizingMaskIntoConstraints = false
        self.messageLabel.numberOfLines = 0
        
        self.addSubview(self.messageView)
        self.addSubview(self.messageLabel)
        
        let constraints = [
            self.messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            self.messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32),
            self.messageLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            
            self.messageView.topAnchor.constraint(equalTo: self.messageLabel.topAnchor, constant: -16),
            self.messageView.leadingAnchor.constraint(equalTo: self.messageLabel.leadingAnchor, constant: -16),
            self.messageView.bottomAnchor.constraint(equalTo: self.messageLabel.bottomAnchor, constant: 16),
            self.messageView.trailingAnchor.constraint(equalTo: self.messageLabel.trailingAnchor, constant: 16)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
        self.leadingConstraint = self.messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32)
        self.leadingConstraint.isActive = false
        
        self.trailingConstraint = self.messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32)
        self.trailingConstraint.isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func setValue(with value: String) {
        self.messageLabel.text = value
    }
}

// MARK: UI Extensions

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}

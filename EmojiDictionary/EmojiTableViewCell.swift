//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Paige Stephenson on 3/9/23.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var symbolLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private func updateView() {
        guard let emoji else { return }
        
        symbolLabel.text = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
    }
    
    var emoji: Emoji? {
        
        didSet {
            updateView()
        }
        
    }
}

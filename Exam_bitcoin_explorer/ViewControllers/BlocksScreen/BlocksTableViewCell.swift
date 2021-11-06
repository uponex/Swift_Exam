//
//  BlocksTableViewCell.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit

class BlocksTableViewCell: UITableViewCell {
    @IBOutlet weak var blockHeight: UILabel!
    @IBOutlet weak var blockTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  BlocksDetailsViewController.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit

class BlocksDetailsViewController: UITableViewController{

    @IBOutlet weak var blockHashLabel: UILabel!
    @IBOutlet weak var blockHeightLabel: UILabel!
    @IBOutlet weak var blockTimeLabel: UILabel!
    @IBOutlet weak var merkleRootLabel: UILabel!
    @IBOutlet weak var numberTransactionsLabel: UILabel!
    @IBOutlet weak var nonceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    var block: Block? {
        didSet {
            self.setupViewControllerData()
        }
    }
    func setupViewControllerData() {
        guard let block = self.block else {
            return
        }
        
        self.loadViewIfNeeded()
        
        //self.blockHashLabel.text = block.height?.description ?? "-"
        self.blockHeightLabel.text = block.height?.description ?? "-"
        self.blockTimeLabel.text = block.time?.description ?? "-"
        self.merkleRootLabel.text = block.mrkl_root?.description ?? "-"
        self.numberTransactionsLabel.text = block.n_tx?.description ?? "-"
        self.nonceLable.text = block.nonce?.description ?? "-"
        
    }

}

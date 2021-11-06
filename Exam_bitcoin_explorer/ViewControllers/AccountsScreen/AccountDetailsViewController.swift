//
//  AccountDetailsViewController.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit

class AccountDetailsViewController: UITableViewController {

    @IBOutlet weak var addressHashLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var numberOfTransactionLabel: UILabel!
    @IBOutlet weak var totalSendLabel: UILabel!
    @IBOutlet weak var totalReceivedLabel: UILabel!
    @IBOutlet weak var finalBalanceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var account: Account? {
        didSet {
            self.setupViewControllerData()
        }
    }
    func setupViewControllerData() {
        guard let account = self.account else {
            return
        }
        
        self.loadViewIfNeeded()
        self.addressHashLabel.text = account.hash160?.description ?? "-"
        self.addressLabel.text = account.address?.description ?? "-"
        self.numberOfTransactionLabel.text = account.n_tx?.description ?? "-"
        self.totalSendLabel.text = account.total_received?.description ?? "-"
        self.totalReceivedLabel.text = account.total_received?.description ?? "-"
        self.finalBalanceLabel.text = account.final_balance?.description ?? "-"
       
    }


}

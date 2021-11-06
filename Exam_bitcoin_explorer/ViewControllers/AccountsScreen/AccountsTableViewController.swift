//
//  AccountsTableViewController.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit

class AccountsTableViewController: UITableViewController {

    var account = [Account]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        //change to count
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountsTableViewController", for: indexPath) as! AccountsTableViewCell

        //        let accountData = self.account[indexPath.row]
        //
        //        cell.accountAddress.text = accountData.height?.description ?? ""
        //        cell.accountBalance.text = accountData.time?.description ?? ""


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "AccountDetailsViewController") as? AccountDetailsViewController{
            self.navigationController?.pushViewController(vc, animated: true)
//            vc.addressLabel.text = "\(account[indexPath.row].address ?? "")"
//            vc.addressHashLabel.text = "\(account[indexPath.row].hash160 ?? "")"
//            vc.finalBalanceLabel.text = "\(account[indexPath.row].final_balance ?? 0)"
//            vc.numberOfTransactionLabel.text = "\(account[indexPath.row].n_tx ?? 0)"
////            vc.totalSendLabel.text = "\(account[indexPath.row].totalSend ?? "")"
//            vc.totalReceivedLabel.text = "\(account[indexPath.row].total_received ?? 0)"
        }

    }
}

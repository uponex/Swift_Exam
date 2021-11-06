//
//  BlocksTableViewController.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit

class BlocksTableViewController: UITableViewController {

    var block = [Block]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 //block.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BlocksTableViewController", for: indexPath) as! BlocksTableViewCell

//        let blockData = self.block[indexPath.row]
//
//        cell.blockHeight.text = blockData.height?.description ?? ""
//        cell.blockTime.text = blockData.time?.description ?? ""

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "BlocksDetailsViewController") as? BlocksDetailsViewController{
            self.navigationController?.pushViewController(vc, animated: true)
            
//            vc.blockHeightLabel.text = "\(block[indexPath.row].height ?? 0)"
//            vc.blockTimeLabel.text = "\(block[indexPath.row].time ?? 0)"
//            vc.merkleRootLabel.text = "\(block[indexPath.row].mrkl_root ?? "")"
//            vc.numberTransactionsLabel.text = "\(block[indexPath.row].n_tx ?? 0)"
//            vc.nonceLable.text = "\(block[indexPath.row].nonce ?? 0)"
        }
    }
}

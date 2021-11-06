//
//  Accounts.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import Foundation
import RealmSwift


class Account: Object {

    @Persisted var address: String? = ""
    @Persisted var n_tx: Int? = 0
   // @Persisted var totalSend: String = ""
    @Persisted var total_received: Int? = 0
    @Persisted var final_balance: Int? = 0
    @Persisted var hash160: String? = ""

    //dictJson["blockHash"] = dictJson["hash"]
    
    static override func primaryKey() -> String? {
        return "address"
    }
}
//
//addressLabel, numberOfTransactionLabel, totalSendLabel, totalReceivedLabel, finalBalanceLabel
//"total_sent": 15441506556, "final_balance": 2413000, "total_received": 15443919556, "n_tx": 82, "address": 1AJbsFZ64EpEfS5UAjAfcUG8pH8Jn3rn1F, "hash160": 660d4ef3a743e3e696ad990364e555c271ad504b, "txs": <__NSArrayI 0x156831780>(
//{
//    balance = 2413000;
//    "block_height" = 643714;
//    "block_index" = 643714;
//    "double_spend" = 0;
//    fee = 49068;


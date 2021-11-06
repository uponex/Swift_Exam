//
//  Blocks.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import Foundation
import RealmSwift


class Block: Object {
//    @Persisted var blockHash: [String]
    @Persisted var height: Int? = 0
    @Persisted var time: Int? = 0
    @Persisted var mrkl_root: String? = ""
    @Persisted var n_tx: Int? = 0
    @Persisted var nonce: Int? = 0

    //dictJson["blockHash"] = dictJson["hash"]
    
    static override func primaryKey() -> String? {
        return "mrkl_root"
    }
}

//"time": 1322131230, "bits": 437129626, "ver": 1, "size": 9195, "main_chain": 1, "mrkl_root": 935aa0ed2e29a4b81e0c995c39e06995ecce7ddbebb26ed32d550a72e8200bf5, "block_index": 154595, "height": 154595, "prev_block": 00000000000007d0f98d9edca880a6c124e25095712df8952e0439ac7409738a, "nonce": 2964215930, "weight": 36780, "hash": 0000000000000bae09a7a393a8acded75aa67e46cb81f7acaa5ad94f9eacd103,

//
//  RequestManager.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit
import Alamofire


struct API {
    static let marketsURL = URL(string: "https://blockchain.info/rawblock/0000000000000bae09a7a393a8acded75aa67e46cb81f7acaa5ad94f9eacd103")!
    //"https://blockchain.info/rawblock/0000000000000bae09a7a393a8acded75aa67e46cb81f7acaa5ad94f9eacd103"
}

enum RequestManagerError: Error {
    case cannotParseData
}

class RequestManager {
    class func fetchAllBlocksData(completion: @escaping ((_ error: Error?) -> Void)) {
        let params: [String: String] = [
            //"hash": "0000000000000bae09a7a393a8acded75aa67e46cb81f7acaa5ad94f9eacd103",
            "cors": "true"
        ]
        
        AF.request(API.marketsURL,
                   method: .get,
                   parameters: params
        )
            .responseJSON { response in
                guard response.error == nil else {
                    completion(response.error)
                    return
                }
                
                
                guard let blocksJSON = response.value as? [String: Any] else {
                    completion(RequestManagerError.cannotParseData)
                    return
                }
                print("JSON", blocksJSON)
                
                
//                let blocks = blocksJSON.map({ Block(value: $0) })

//                DispatchQueue.main.async {
//                    try? LocalDataManager.realm.write {
//                        LocalDataManager.realm.add(blocks, update: .all)
//                    }
//                }
                NotificationCenter.default.post(name: .blockDataLoaded, object: nil)
                completion(nil)
            }
    }
}


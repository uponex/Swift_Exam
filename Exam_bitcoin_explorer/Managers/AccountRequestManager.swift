//
//  AccountRequestManager.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit
import Alamofire


struct AccountAPI {
    static let marketsURL = URL(string: "https://blockchain.info/rawaddr/1AJbsFZ64EpEfS5UAjAfcUG8pH8Jn3rn1F")!
   //https://blockchain.info/rawaddr/1AJbsFZ64EpEfS5UAjAfcUG8pH8Jn3rn1F
}

enum AccountRequestManagerError: Error {
    case cannotParseData
}


class AccountRequestManager {
    class func fetchAllAccountsData(completion: @escaping ((_ error: Error?) -> Void)) {
        let params: [String: String] = [:]
        
        AF.request(AccountAPI.marketsURL,
                   method: .get,
                   parameters: params)
        
            .responseJSON { response in
                guard response.error == nil else {
                    completion(response.error)
                    return
                }
                
                
                guard let accountsJSON = response.value as? [String: Any] else {
                    completion(RequestManagerError.cannotParseData)
                    return
                }
                print("Account JSON", accountsJSON)
                
                
//                let accounts = accountsJSON.map({ Account(value: $0) })
//
//                DispatchQueue.main.async {
//                    try? LocalDataManager.realm.write {
//                        LocalDataManager.realm.add(accounts, update: .all)
//                    }
//                }
                NotificationCenter.default.post(name: .accountDataLoaded, object: nil)
                completion(nil)
            }
    }
}

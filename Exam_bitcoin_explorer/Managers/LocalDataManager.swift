//
//  LocalDataManagers.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import Foundation
import RealmSwift

enum LocalDataManagerError: Error {
    case wrongQueue
}

class LocalDataManager {
    static let realm: Realm = {
        return try! initializeRealm(checkForMainThread: true)
    }()

    static func backgroundRealm(queue: DispatchQueue = DispatchQueue.main) -> Realm {
        return try! initializeRealm(checkForMainThread: false, queue: queue)
    }
    
    class func initializeRealm(checkForMainThread: Bool = false, queue: DispatchQueue = DispatchQueue.main) throws -> Realm {
        if checkForMainThread {
            guard OperationQueue.current?.underlyingQueue == DispatchQueue.main else {
                throw LocalDataManagerError.wrongQueue
            }
        }
        do {
            return try Realm(configuration: realmConfiguration, queue: queue)
        } catch {
            throw error
        }
    }
    
    static let realmConfiguration: Realm.Configuration = {
        var configuration = Realm.Configuration.defaultConfiguration
        
        configuration.schemaVersion = 4
        configuration.deleteRealmIfMigrationNeeded = true
        configuration.migrationBlock = { (migration, version) in
            
        }
        
        return configuration
    }()
}

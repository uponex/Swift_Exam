//
//  AddAccountViewController.swift
//  Exam_bitcoin_explorer
//
//  Created by Kalin M on 6.11.21.
//

import UIKit

class AddAccountViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var accountAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountAddress.delegate = self
       
        readDataFromUserDefaults()
        saveDataToUserDefaults()
    }
    
    func saveDataToUserDefaults(){
        UserDefaults.standard.set(accountAddress.text, forKey: "accountAddress")
        UserDefaults.standard.synchronize()
        
    }
    
    func readDataFromUserDefaults(){
        if let account = UserDefaults.standard.string(forKey: "accountAddress") {
            accountAddress.text = account
            print("account", account)
        }

       
    }
    @IBAction func didTapConfirmAddress(_ sender: UIButton) {
        self.accountAddress.resignFirstResponder()
        self.accountAddress.becomeFirstResponder()
        
        saveDataToUserDefaults()
        readDataFromUserDefaults()
       

    }
    

}

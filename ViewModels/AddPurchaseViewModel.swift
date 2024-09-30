//
//  AddPurchaseViewModel.swift
//  MoneyTrack
//
//  Created by Karina Osadchaya on 9/23/24.
//

import UIKit

class AddPurchaseViewModel {

//MARK: - variables
    
    var purchaseRecords: [PurchaseRecord] = []
    
//MARK: functions
    
    func printPurchase(_ placeTextField: UITextField, purchaseTextField: UITextField, priceTextField: UITextField) {
        print(placeTextField.text ?? "")
        print(purchaseTextField.text ?? "")
        print(priceTextField.text ?? "")
        
        placeTextField.text = ""
        purchaseTextField.text = ""
        priceTextField.text = ""
    }
    
    func saveRecord(purchaseRecord: PurchaseRecord) {
        purchaseRecords.append(purchaseRecord)
    }
    
    func printRecords() {
        for i in (0...purchaseRecords.count-1) {
            print(purchaseRecords[i].place, " ",
                  purchaseRecords[i].purchase, " ",
                  purchaseRecords[i].price)
            print("\n")
        }
    }
    
}

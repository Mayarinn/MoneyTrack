//
//  AddPurchaseViewModel.swift
//  MoneyTrack
//
//  Created by Karina Osadchaya on 9/23/24.
//

import UIKit

class AddPurchaseViewModel {
    
    var purchaseRecords: [PurchaseRecord] = []
    
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
    
}

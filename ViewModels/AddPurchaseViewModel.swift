//
//  AddPurchaseViewModel.swift
//  MoneyTrack
//
//  Created by Karina Osadchaya on 9/23/24.
//

import UIKit

class AddPurchaseViewModel {
    
    func printPurchase(_ placeTextField: UITextField, purchaseTextField: UITextField, priceTextField: UITextField) {
        print(placeTextField.text ?? "")
        print(purchaseTextField.text ?? "")
        print(priceTextField.text ?? "")
        
        placeTextField.text = ""
        purchaseTextField.text = ""
        priceTextField.text = ""
    }
    
}

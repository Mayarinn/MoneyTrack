//
//  AddPurchaseViewModel.swift
//  MoneyTrack
//
//  Created by Karina Osadchaya on 9/23/24.
//

import UIKit

class AddPurchaseViewModel {

//MARK: - variables
    
//MARK: functions
    
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

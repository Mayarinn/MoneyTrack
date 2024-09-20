//
//  ViewController.swift
//  MoneyTrack
//
//  Created by Karia Osadchaya on 9/20/24.
//

import UIKit

class AddPurchaseViewController: UIViewController {

//MARK: - variables
    
    var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Super Title"
        titleLabel.font = .systemFont(ofSize: 24)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
//MARK: - functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
    }


}


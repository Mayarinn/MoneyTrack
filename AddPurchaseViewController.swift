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
        titleLabel.text = "Add Purchase"
        titleLabel.font = .systemFont(ofSize: 24)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    var placeLabel: UILabel = {
        let placeLabel = UILabel()
        placeLabel.text = "Place"
        placeLabel.translatesAutoresizingMaskIntoConstraints = false
            
        return placeLabel
    }()
    
//MARK: - functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray2
        addSubviews()
        setConstraints()
    }

    func addSubviews() {
        view.addSubview(titleLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
        ])
    }

}


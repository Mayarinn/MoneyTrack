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
    
    var purchaseLabel: UILabel = {
        let purchaseLabel = UILabel()
        purchaseLabel.text = "Purchase"
        purchaseLabel.translatesAutoresizingMaskIntoConstraints = false
            
        return purchaseLabel
    }()
    
    var priceLabel: UILabel = {
        let priceLabel = UILabel()
        priceLabel.text = "Price"
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return priceLabel
    }()
    
    var placeTextField: UITextField = {
        let placeTextField = UITextField()
        placeTextField.borderStyle = .roundedRect
        placeTextField.translatesAutoresizingMaskIntoConstraints = false
            
        return placeTextField
    }()
    
    var purchaseTextField: UITextField = {
        let purchaseTextField = UITextField()
        purchaseTextField.borderStyle = .roundedRect
        purchaseTextField.translatesAutoresizingMaskIntoConstraints = false
                
        return purchaseTextField
    }()
    
    var priceTextField: UITextField = {
        let priceTextField = UITextField()
        priceTextField.borderStyle = .roundedRect
        priceTextField.translatesAutoresizingMaskIntoConstraints = false
        
        return priceTextField
    }()
    
    var addPurchaseButton: UIButton = {
        let addPurchaseButton = UIButton()
        addPurchaseButton.setTitle("Add Purchase", for: .normal)
        addPurchaseButton.layer.cornerRadius = 7
        addPurchaseButton.backgroundColor = .systemIndigo
        addPurchaseButton.setTitleColor(.systemYellow, for: .highlighted)
        
        addPurchaseButton.translatesAutoresizingMaskIntoConstraints = false
        
        return addPurchaseButton
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
        view.addSubview(placeLabel)
        view.addSubview(placeTextField)
        view.addSubview(purchaseLabel)
        view.addSubview(purchaseTextField)
        view.addSubview(priceLabel)
        view.addSubview(priceTextField)
        view.addSubview(addPurchaseButton)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            //Place Section
            
            placeLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            placeLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            placeLabel.widthAnchor.constraint(equalToConstant: 75),
            
            placeTextField.leftAnchor.constraint(equalTo: placeLabel.rightAnchor, constant: 30),
            placeTextField.centerYAnchor.constraint(equalTo: placeLabel.centerYAnchor),
            placeTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            placeTextField.heightAnchor.constraint(equalToConstant: 25),
            
            //Purchase Section
            
            purchaseLabel.leftAnchor.constraint(equalTo: placeLabel.leftAnchor),
            purchaseLabel.centerYAnchor.constraint(equalTo: purchaseTextField.centerYAnchor),
            purchaseLabel.widthAnchor.constraint(equalTo: placeLabel.widthAnchor),
            
            purchaseTextField.leftAnchor.constraint(equalTo: placeTextField.leftAnchor),
            purchaseTextField.topAnchor.constraint(equalTo: placeTextField.bottomAnchor, constant: 15),
            purchaseTextField.rightAnchor.constraint(equalTo: placeTextField.rightAnchor),
            purchaseTextField.heightAnchor.constraint(equalTo: placeTextField.heightAnchor),
            
            //Price Section
            
            priceLabel.leftAnchor.constraint(equalTo: placeLabel.leftAnchor),
            priceLabel.centerYAnchor.constraint(equalTo: priceTextField.centerYAnchor),
            priceLabel.widthAnchor.constraint(equalTo: placeLabel.widthAnchor),
            
            priceTextField.leftAnchor.constraint(equalTo: placeTextField.leftAnchor),
            priceTextField.topAnchor.constraint(equalTo: purchaseTextField.bottomAnchor, constant: 15),
            priceTextField.rightAnchor.constraint(equalTo: placeTextField.rightAnchor),
            priceTextField.heightAnchor.constraint(equalTo: placeTextField.heightAnchor)
        ])
    }

}


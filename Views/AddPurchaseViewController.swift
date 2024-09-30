//
//  ViewController.swift
//  MoneyTrack
//
//  Created by Karia Osadchaya on 9/20/24.
//

import UIKit

class AddPurchaseViewController: UIViewController {

//MARK: - variables
    
    let equalSpacer: CGFloat = 15.0 //vertical spacer between UI elements
    let addPurchaseViewModel = AddPurchaseViewModel()
    
    var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Add Purchase"
        titleLabel.font = .systemFont(ofSize: 24)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return titleLabel
    }()
    
    //MARK: - Add Purchase Section
    
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
        addPurchaseButton.setTitleColor(.purple, for: .highlighted)
        addPurchaseButton.addTarget(self, action: #selector(addPurchaseButtonClicked), for: .touchUpInside)
        
        addPurchaseButton.translatesAutoresizingMaskIntoConstraints = false
        
        return addPurchaseButton
    }()
    
    //MARK: - Statistics Section
    
    var currentMonthTotalLabel: UILabel = {
        let currentMonthTotalLabel = UILabel()
        currentMonthTotalLabel.text = "Current Month Total: $ 100"
        currentMonthTotalLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return currentMonthTotalLabel
    }()
    
    var prevMonthTotalLabel: UILabel = {
        let prevMonthTotalLabel = UILabel()
        prevMonthTotalLabel.text = "Previous Month Total: $ 200"
        prevMonthTotalLabel.translatesAutoresizingMaskIntoConstraints = false
            
        return prevMonthTotalLabel
    }()
    
    //MARK: - History Link
    
    var historyLinkButton: UIButton = {
        let historyLinkButton = UIButton()
        historyLinkButton.setTitle("Purchase History >", for: .normal)
        historyLinkButton.setTitleColor(.blue, for: .normal)
        historyLinkButton.setTitleColor(.purple, for: .highlighted)
        
        historyLinkButton.translatesAutoresizingMaskIntoConstraints = false
        
        return historyLinkButton
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
        view.addSubview(currentMonthTotalLabel)
        view.addSubview(prevMonthTotalLabel)
        view.addSubview(historyLinkButton)
    }
    
    //MARK: - Set Constraints
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            //Place Section
            
            placeLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            placeLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            placeLabel.widthAnchor.constraint(equalToConstant: 75),
            
            placeTextField.leftAnchor.constraint(equalTo: addPurchaseButton.leftAnchor),
            placeTextField.centerYAnchor.constraint(equalTo: placeLabel.centerYAnchor),
            placeTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            placeTextField.heightAnchor.constraint(equalToConstant: 25),
            
            //Purchase Section
            
            purchaseLabel.leftAnchor.constraint(equalTo: placeLabel.leftAnchor),
            purchaseLabel.centerYAnchor.constraint(equalTo: purchaseTextField.centerYAnchor),
            purchaseLabel.widthAnchor.constraint(equalTo: placeLabel.widthAnchor),
            
            purchaseTextField.leftAnchor.constraint(equalTo: placeTextField.leftAnchor),
            purchaseTextField.topAnchor.constraint(equalTo: placeTextField.bottomAnchor, constant: equalSpacer),
            purchaseTextField.rightAnchor.constraint(equalTo: placeTextField.rightAnchor),
            purchaseTextField.heightAnchor.constraint(equalTo: placeTextField.heightAnchor),
            
            //Price Section
            
            priceLabel.leftAnchor.constraint(equalTo: placeLabel.leftAnchor),
            priceLabel.centerYAnchor.constraint(equalTo: priceTextField.centerYAnchor),
            priceLabel.widthAnchor.constraint(equalTo: placeLabel.widthAnchor),
            
            priceTextField.leftAnchor.constraint(equalTo: placeTextField.leftAnchor),
            priceTextField.topAnchor.constraint(equalTo: purchaseTextField.bottomAnchor, constant: equalSpacer),
            priceTextField.rightAnchor.constraint(equalTo: placeTextField.rightAnchor),
            priceTextField.heightAnchor.constraint(equalTo: placeTextField.heightAnchor),
            
            //Add Purchase Button
            
            addPurchaseButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            addPurchaseButton.topAnchor.constraint(equalTo: priceTextField.bottomAnchor, constant: 25),
            addPurchaseButton.widthAnchor.constraint(equalToConstant: 150),
            addPurchaseButton.heightAnchor.constraint(equalToConstant: 30),
            
            //Statistics Section
            
            currentMonthTotalLabel.leftAnchor.constraint(equalTo: placeLabel.leftAnchor),
            currentMonthTotalLabel.topAnchor.constraint(equalTo: addPurchaseButton.bottomAnchor, constant: 60),
            currentMonthTotalLabel.heightAnchor.constraint(equalToConstant: 25),
            
            prevMonthTotalLabel.leftAnchor.constraint(equalTo: placeLabel.leftAnchor),
            prevMonthTotalLabel.topAnchor.constraint(equalTo: currentMonthTotalLabel.bottomAnchor, constant: equalSpacer),
            prevMonthTotalLabel.heightAnchor.constraint(equalTo: currentMonthTotalLabel.heightAnchor),
            
            //History Link
            
            historyLinkButton.leftAnchor.constraint(equalTo: placeLabel.leftAnchor),
            historyLinkButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -equalSpacer)
        ])
    }
    
//MARK: - objc functions
    
    @objc func addPurchaseButtonClicked(_ sender: UIButton) {
        addPurchaseViewModel.printPurchase(placeTextField, purchaseTextField: purchaseTextField, priceTextField: priceTextField)
        
        let newRecord = PurchaseRecord(time: "Time",
                                       place: placeTextField.text ?? "Place",
                                       purchase: purchaseTextField.text ?? "Purchase",
                                       price: priceTextField.text ?? "Price")
        addPurchaseViewModel.saveRecord(purchaseRecord: newRecord)
        addPurchaseViewModel.printRecords()
    }

}


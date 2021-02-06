//
//  ViewController.swift
//  MultiplicationApp
//
//  Created by RICHARD SCHWAMBACH on 05/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Creation of the UI
    
    let textLabel: UILabel = {
       let label = UILabel()
        label.text = "Choose a number \n and see it's multiplication from \n 1 to 10"
        label.textColor = Color.silver
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont(name: "Verdana", size: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textField: UITextField = {
       let tField = UITextField()
        tField.placeholder = "Insert a Number"
        tField.textColor = .gray
        tField.textAlignment = .center
        tField.borderStyle = .roundedRect
        tField.keyboardType = .numberPad
        tField.translatesAutoresizingMaskIntoConstraints = false
        return tField
    }()
    
    let buttonCheck: UIButton = {
        let button = UIButton()
        button.setTitle("Check".uppercased(), for: .normal)
        button.setTitleColor(Color.silver, for: .normal)
        button.setTitleColor(Color.dophin, for: .highlighted)
        button.layer.borderWidth = 1
        button.layer.borderColor = Color.silver.cgColor
        button.layer.cornerRadius = 5
        button.backgroundColor = .clear
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        button.titleLabel?.font = UIFont(name: "Verdana", size: 40)
        button.addTarget(self, action: #selector(buttonCheckClicked), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var delegate: NumberDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Color.whiteSmoke
        setUpLayout()
        
    }
    
    
    private func setUpLayout() {

        // Add the subViews
        view.addSubview(textLabel)
        view.addSubview(textField)
        view.addSubview(buttonCheck)
        
        // Label anchors
        textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        // Textfield anchors
        textField.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 50).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Button anchors
        buttonCheck.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 50).isActive = true
        buttonCheck.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    @objc func buttonCheckClicked() {
        if textField.text?.isEmpty == false {
           let inputedNumber = Int(textField.text!)
            delegate?.didSendNumber(number: inputedNumber!)
            openSecondView()
            Functions.cleanField(whichTextField: textField)
        }
    }
    
     func openSecondView() {
        let controller = SecondVC()
        present(controller, animated: true, completion: nil)
    }
    

}



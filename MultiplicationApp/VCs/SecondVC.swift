//
//  SecondVC.swift
//  MultiplicationApp
//
//  Created by RICHARD SCHWAMBACH on 12/01/21.
//

import UIKit

class SecondVC: UIViewController {
    
    //MARK: Creation of the UI
    
    var labelHeader: UILabel = {
        let label = UILabel()
        label.text = "Result of your request"
        label.textColor = Color.silver
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont(name: "Verdana", size: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.spacing = CGFloat(10)
        stack.backgroundColor = .blue
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    var numbergot = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        setUpLayout()
        
    }
    
    private func setUpLayout() {

        // Add the subViews
        view.addSubview(labelHeader)
        view.addSubview(stackView)
        
        // Label anchors
        labelHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        labelHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        labelHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        labelHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        // Stack anchors
        stackView.topAnchor.constraint(equalTo: labelHeader.bottomAnchor, constant: 50).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    
}

extension SecondVC: NumberDelegate {
    
    func didSendNumber(number: Int) {
        numbergot = number
        labelHeader.text = String(number)
    }
}

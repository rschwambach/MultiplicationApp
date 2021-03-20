//
//  SecondVC.swift
//  MultiplicationApp
//
//  Created by RICHARD SCHWAMBACH on 12/01/21.
//

import UIKit

class SecondVC: UIViewController {
    
    //MARK: Creation of the UI
    
    let labelHeader: UILabel = {
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
        stack.distribution = .equalSpacing
        stack.axis = .vertical
        stack.alignment = .leading
        //stack.spacing = CGFloat(10)
        //stack.backgroundColor = .blue
        //stack.layer.borderWidth = 3
        //stack.layer.borderColor = UIColor.darkGray.cgColor
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    class ResultLabel: UILabel {
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            //text = "Holder"
            textColor = Color.silver
            textAlignment = .center
            numberOfLines = 0
            font = UIFont(name: "Verdana", size: 30)
            translatesAutoresizingMaskIntoConstraints = false
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
    let labelResultOne: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultTwo: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultThree: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultFour: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultFive: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultSix: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultSeven: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultEight: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultNine: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    let labelResultTen: ResultLabel = {
        let label = ResultLabel()
        return label
    }()
    
    
    //MARK: Aux Variables
    
    var multiplyResults: [Int] = []
    var numbergot = 5
    var valueTimes = 1
    
    //MARK: viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        setUpLayout()
        multiplyNumber()
        printResult()
    }
    
    //MARK: Functions
    
    private func setUpLayout() {
        
        // Add the subViews
        view.addSubview(labelHeader)
        view.addSubview(stackView)
        stackView.addArrangedSubview(labelResultOne)
        stackView.addArrangedSubview(labelResultTwo)
        stackView.addArrangedSubview(labelResultThree)
        stackView.addArrangedSubview(labelResultFour)
        stackView.addArrangedSubview(labelResultFive)
        stackView.addArrangedSubview(labelResultSix)
        stackView.addArrangedSubview(labelResultSeven)
        stackView.addArrangedSubview(labelResultEight)
        stackView.addArrangedSubview(labelResultNine)
        stackView.addArrangedSubview(labelResultTen)
        
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
    
    // Function to multiply the inputed number from 1 to 10
    
    func multiplyNumber() {
        while valueTimes <= 10 {
            multiplyResults.append(numbergot * valueTimes)
            valueTimes = valueTimes + 1
            print("VT \(valueTimes)")
            print(multiplyResults)
        }
    }
    
    // Function to show in app the result of the multiplications
    
    func printResult() {
        labelResultOne.text   = "  1 X \(numbergot) = \(multiplyResults[0])"
        labelResultTwo.text   = "  2 X \(numbergot) = \(multiplyResults[1])"
        labelResultThree.text = "  3 X \(numbergot) = \(multiplyResults[2])"
        labelResultFour.text  = "  4 X \(numbergot) = \(multiplyResults[3])"
        labelResultFive.text  = "  5 X \(numbergot) = \(multiplyResults[4])"
        labelResultSix.text   = "  6 X \(numbergot) = \(multiplyResults[5])"
        labelResultSeven.text = "  7 X \(numbergot) = \(multiplyResults[6])"
        labelResultEight.text = "  8 X \(numbergot) = \(multiplyResults[7])"
        labelResultNine.text  = "  9 X \(numbergot) = \(multiplyResults[8])"
        labelResultTen.text   = "10 X \(numbergot) = \(multiplyResults[9])"
    }
    
}

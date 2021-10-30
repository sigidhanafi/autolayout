//
//  CalculatorViewController.swift
//  AutoLayout
//
//  Created by Sigit Hanafi on 30/10/21.
//

import Foundation
import UIKit

internal class CalculatorViewController: UIViewController {
    
    private let containerStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let topSpace: UIView = {
        var view = UIView()
        return view
    }()
    
    private let valueStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let valueLabel: UILabel = {
        var label = UILabel()
        label.text = "123456789"
        label.font = .systemFont(ofSize: 40)
        label.textColor = .darkGray
        label.textAlignment = .right
        return label
    }()
    
    private let row1: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let row2: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let row3: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let row4: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let row5: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let acButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .systemGray6
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let plusMinusButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .systemGray6
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let percentButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .systemGray6
        button.setTitle("%", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let divButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let sevenButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let eightButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let nineButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let multipleButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("x", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let fourButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let fiveButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let sixButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let minusButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let oneButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let twoButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let threeButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let plusButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let zeroButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let dotButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle(".", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let commaButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle(",", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    private let equalButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Calculator View"
        
        setupView()
    }
    
    private func setupView() {
        row1.addArrangedSubview(acButton)
        row1.addArrangedSubview(plusMinusButton)
        row1.addArrangedSubview(percentButton)
        row1.addArrangedSubview(divButton)
        
        row2.addArrangedSubview(sevenButton)
        row2.addArrangedSubview(eightButton)
        row2.addArrangedSubview(nineButton)
        row2.addArrangedSubview(multipleButton)
        
        row3.addArrangedSubview(fourButton)
        row3.addArrangedSubview(fiveButton)
        row3.addArrangedSubview(sixButton)
        row3.addArrangedSubview(minusButton)
        
        row4.addArrangedSubview(oneButton)
        row4.addArrangedSubview(twoButton)
        row4.addArrangedSubview(threeButton)
        row4.addArrangedSubview(plusButton)
        
        row5.addArrangedSubview(zeroButton)
        row5.addArrangedSubview(dotButton)
        row5.addArrangedSubview(commaButton)
        row5.addArrangedSubview(equalButton)
        
        valueStackView.addArrangedSubview(valueLabel)
        
        containerStackView.addArrangedSubview(topSpace)
        containerStackView.addArrangedSubview(valueStackView)
        containerStackView.addArrangedSubview(row1)
        containerStackView.addArrangedSubview(row2)
        containerStackView.addArrangedSubview(row3)
        containerStackView.addArrangedSubview(row4)
        containerStackView.addArrangedSubview(row5)
        
        view.addSubview(containerStackView)
        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        containerStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        containerStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
}

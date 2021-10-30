//
//  ViewController.swift
//  AutoLayout
//
//  Created by Sigit Hanafi on 29/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let topContainer: UIView = {
        var view = UIView()
        return view
    }()
    
    private let titleLabel: UILabel = {
        var label = UILabel();
        label.text = "AutoLayout App"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private let middleContainer: UIView = {
        var view = UIView()
        return view
    }()
    
    private let aboutMenu: UIImageView = {
        var image = UIImage(named: "about")
        var viewImage = UIImageView(image: image!)
        return viewImage
    }()
    
    private let codeMenu: UIImageView = {
        var image = UIImage(named: "code")
        var viewImage = UIImageView(image: image!)
        return viewImage
    }()
    
    private let squareSizeOfMenu = 100

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setupView()
        
        // add tap gesture
        let tapGestureRecog = UITapGestureRecognizer()
        tapGestureRecog.addTarget(self, action: #selector(tapCodeMenu))
        codeMenu.addGestureRecognizer(tapGestureRecog)
        codeMenu.isUserInteractionEnabled = true
    }
    
    private func setupView() {
        topContainer.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: topContainer.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: topContainer.centerYAnchor).isActive = true
        
        view.addSubview(topContainer)
        topContainer.translatesAutoresizingMaskIntoConstraints = false
        topContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        let centerMinusSquare = Int((UIScreen.main.bounds.height / 2)) - (squareSizeOfMenu / 2)
        topContainer.heightAnchor.constraint(equalToConstant: CGFloat(centerMinusSquare)).isActive = true
        
        middleContainer.addSubview(aboutMenu)
        middleContainer.addSubview(codeMenu)
        
        aboutMenu.translatesAutoresizingMaskIntoConstraints = false
        aboutMenu.widthAnchor.constraint(equalToConstant: CGFloat(squareSizeOfMenu)).isActive = true
        aboutMenu.heightAnchor.constraint(equalToConstant: CGFloat(squareSizeOfMenu)).isActive = true
        let leftAnchor = Int(UIScreen.main.bounds.width / 2) - squareSizeOfMenu - 10
        aboutMenu.leadingAnchor.constraint(equalTo: middleContainer.leadingAnchor, constant: CGFloat(leftAnchor)).isActive = true
        aboutMenu.trailingAnchor.constraint(equalTo: codeMenu.leadingAnchor, constant: -20).isActive = true
        
        codeMenu.translatesAutoresizingMaskIntoConstraints = false
        codeMenu.widthAnchor.constraint(equalToConstant: CGFloat(squareSizeOfMenu)).isActive = true
        codeMenu.heightAnchor.constraint(equalToConstant: CGFloat(squareSizeOfMenu)).isActive = true
        let rightAnchor = Int(UIScreen.main.bounds.width / 2) - squareSizeOfMenu - 10
        codeMenu.trailingAnchor.constraint(equalTo: middleContainer.trailingAnchor, constant: CGFloat(-rightAnchor)).isActive = true
        
        view.addSubview(middleContainer)
        middleContainer.translatesAutoresizingMaskIntoConstraints = false
        middleContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        middleContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        middleContainer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        middleContainer.heightAnchor.constraint(equalToConstant: CGFloat(squareSizeOfMenu)).isActive = true
    }
    
    @objc
    func tapCodeMenu() {
        self.navigationController?.pushViewController(CalculatorViewController(), animated: true)
    }

}


//
//  SignInView.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

// TODO: configure keyboard (add keyboard manager)

class SignInView: UIView, SignInRootView {

    weak var delegate: SignInViewDelegate?
    
    private lazy var usernameTextField: SMSTextField = {
        let field = SMSTextField()
        field.set(backgroundColor: UIColor.systemGray6.cgColor, placeholder: "Enter username or phone number")
        return field
    } ()
    
    private lazy var passTextField: SMSTextField = {
        let field = SMSTextField()
        field.set(backgroundColor: UIColor.systemGray6.cgColor, placeholder: "Enter the password")
        return field
    } ()
    
    private lazy var enterButton: SMSButton = {
        let button = SMSButton()
        button.set(backgroundColor: .systemPink, title: "Enter")
        return button
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubviews(usernameTextField, passTextField, enterButton)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 200),
            usernameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            usernameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 50),
            passTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            passTextField.heightAnchor.constraint(equalToConstant: 50),
            
            enterButton.topAnchor.constraint(equalTo: passTextField.bottomAnchor, constant: 50),
            enterButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            enterButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            enterButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

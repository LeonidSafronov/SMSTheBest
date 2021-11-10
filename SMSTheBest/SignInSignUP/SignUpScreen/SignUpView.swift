//
//  SignUpView.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

class SignUpView: UIView, SignUpRootView {

    weak var delegate: SignUpViewDelegate?
    
    private lazy var phoneTextField: SMSTextField = {
        let field = SMSTextField()
        field.set(backgroundColor: UIColor.systemGray6.cgColor, placeholder: "Enter the phone number")
        return field
    } ()
    
    private lazy var codeTextField: SMSTextField = {
        let field = SMSTextField()
        field.set(backgroundColor: UIColor.systemGray6.cgColor, placeholder: "Enter the code")
        return field
    } ()
    
    private lazy var confirmButton: SMSButton = {
        let button = SMSButton()
        button.set(backgroundColor: .systemBlue, title: "Confirm")
        return button
    } ()
    
    private lazy var sendCodeButton: SMSButton = {
        let button = SMSButton()
        button.set(backgroundColor: .systemBlue, title: "Send code")
        return button
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubviews(phoneTextField, sendCodeButton, codeTextField, confirmButton)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        NSLayoutConstraint.activate([
            phoneTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 200),
            phoneTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            phoneTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            phoneTextField.heightAnchor.constraint(equalToConstant: 50),
            
            sendCodeButton.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 50),
            sendCodeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            sendCodeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            sendCodeButton.heightAnchor.constraint(equalToConstant: 50),
            
            codeTextField.topAnchor.constraint(equalTo: sendCodeButton.bottomAnchor, constant: 50),
            codeTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            codeTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            codeTextField.heightAnchor.constraint(equalToConstant: 50),
            
            confirmButton.topAnchor.constraint(equalTo: codeTextField.bottomAnchor, constant: 50),
            confirmButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            confirmButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            confirmButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

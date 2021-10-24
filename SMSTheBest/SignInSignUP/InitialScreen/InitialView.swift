//
//  InitialView.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

class InitialView: UIView, InitialRootView {
    
    weak var delegate: InitialViewDelegate?
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = Images.smsLogo
        return imageView
    } ()
    
    private lazy var signInButton: SMSButton = {
        let button = SMSButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.set(backgroundColor: .systemPink, title: "Sign in")
        return button
    } ()
    
    private lazy var signUpButton: SMSButton = {
        let button = SMSButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.set(backgroundColor: .systemBlue, title: "Sign up")
        return button
    } ()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .systemBackground
        addSubviews(logoImageView, signInButton, signUpButton)
        
        configureLogoImageView()
        configureSignInButton()
        configureSignUpButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLogoImageView() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func configureSignInButton() {
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100),
            signInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            signInButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            signInButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func configureSignUpButton() {
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 50),
            signUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            signUpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            signUpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

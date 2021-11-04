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
        button.set(backgroundColor: .systemPink, title: "Sign in")
        button.addTarget(self, action: #selector(pushSignInVC), for: .touchUpInside)
        return button
    } ()
    
    private lazy var signUpButton: SMSButton = {
        let button = SMSButton()
        button.set(backgroundColor: .systemBlue, title: "Sign up")
        button.addTarget(self, action: #selector(pushSignUpVC), for: .touchUpInside)
        return button
    } ()
    
    
    @objc func pushSignInVC() {
        delegate?.goToSignInView()
    }
        
    @objc func pushSignUpVC() {
        delegate?.goToSignUpView()
    }
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .systemBackground
        addSubviews(logoImageView, signInButton, signUpButton)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
    
            signInButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100),
            signInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            signInButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            
            signUpButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 50),
            signUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            signUpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            signUpButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

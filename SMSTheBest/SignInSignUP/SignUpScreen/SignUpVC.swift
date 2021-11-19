//
//  SignUpVC.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit
import FirebaseAuth

class SignUpVC: UIViewController {
    
    var delegate: SignUpViewDelegate?
    
    private lazy var rootView: SignUpRootView = SignUpView()
    
    override func loadView() {
        view = rootView
        rootView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func signUpAuth() {

    }
}

extension SignUpVC: SignUpViewDelegate {
    
    func goToStartUserView() {
        let startUserVC = StartUserVC()
        navigationController?.pushViewController(startUserVC, animated: true)
    }
    
    func takePhoneNumber() {
        print("phone recieved")
    }
    
    func takeSmsCode() {
        print("code recieved")
    }
}

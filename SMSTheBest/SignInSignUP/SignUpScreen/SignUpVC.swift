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
        keyboardConfigure()
    }
    
    func signUpAuth() {

    }
    
    func keyboardConfigure() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height/5
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
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

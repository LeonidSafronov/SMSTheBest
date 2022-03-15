//
//  ViewController.swift
//  SMSTheBest
//
//  Created by Леонид on 21.10.2021.
//

import UIKit

class InitialVC: UIViewController {
    
    private lazy var rootView: InitialRootView = InitialView()
    
    override func loadView() {
        view = rootView
        rootView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension InitialVC: InitialViewDelegate {

    func goToSignInView() {
        let signInVC = SignInVC()
        navigationController?.pushViewController(signInVC, animated: true)
    }
    
    func goToSignUpView() {
        let signUpVC = SignUpVC()
        navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    func showError() {
//       TODO: show error notification screen
    }
}

//
//  SignUpVC.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit
import FirebaseAuth

class SignUpVC: UIViewController, SignUpViewDelegate {
    
    private lazy var rootView: SignUpRootView = SignUpView()
    
    override func loadView() {
        view = rootView
        rootView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

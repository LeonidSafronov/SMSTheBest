//
//  SignInVC.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

class SignInVC: UIViewController, SignInViewDelegate {

    private lazy var rootView: SignInRootView = SignInView()
    
    override func loadView() {
        view = rootView
        rootView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

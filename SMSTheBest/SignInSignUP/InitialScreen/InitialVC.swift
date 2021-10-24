//
//  ViewController.swift
//  SMSTheBest
//
//  Created by Леонид on 21.10.2021.
//

import UIKit

class InitialVC: UIViewController, InitialViewDelegate {
    
    private lazy var rootView: InitialRootView = InitialView()
    
    override func loadView() {
        view = rootView
        rootView.delegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


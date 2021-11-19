//
//  StartUserVC.swift
//  SMSTheBest
//
//  Created by Leonid Safronov on 19.11.2021.
//

import UIKit

class StartUserVC: UIViewController, StartUserViewDelegate {
    private lazy var rootview: StartUserRootView = StartUserView()
    
    override func loadView() {
        view = rootview
        rootview.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//
//  SignUpView.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

class SignUpView: UIView, SignUpRootView {

    weak var delegate: SignUpViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

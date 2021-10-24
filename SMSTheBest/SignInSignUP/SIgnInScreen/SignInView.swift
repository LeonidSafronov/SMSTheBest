//
//  SignInView.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

class SignInView: UIView, SignInRootView {

    weak var delegate: SignInViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .cyan
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//
//  SignInViewProtocol.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

protocol SignInViewDelegate: AnyObject {
    
}

protocol SignInRootView: UIView {
    var delegate: SignInViewDelegate? { get set }
}

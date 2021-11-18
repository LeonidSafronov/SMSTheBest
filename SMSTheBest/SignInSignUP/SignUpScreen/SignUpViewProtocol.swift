//
//  SignUpViewProtocol.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

protocol SignUpRootView: UIView {
    var delegate: SignUpViewDelegate? { get set }
}

protocol SignUpViewDelegate: AnyObject {
    func takePhoneNumber()
    func takeSmsCode()
}

//
//  StartUserViewProtocol.swift
//  SMSTheBest
//
//  Created by Leonid Safronov on 19.11.2021.
//

import UIKit

protocol StartUserRootView: UIView {
    var delegate: StartUserViewDelegate? { get set }
}

protocol StartUserViewDelegate: AnyObject {
    
}

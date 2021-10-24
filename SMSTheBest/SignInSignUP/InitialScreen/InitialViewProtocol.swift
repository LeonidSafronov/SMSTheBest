//
//  InitialViewProtocol.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

protocol InitialRootView: UIView {
    var delegate: InitialViewDelegate? { get set }
}

protocol InitialViewDelegate: AnyObject {
    
}

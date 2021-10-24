//
//  InitialView.swift
//  SMSTheBest
//
//  Created by Леонид on 24.10.2021.
//

import UIKit

class InitialView: UIView, InitialRootView {
    
    weak var delegate: InitialViewDelegate?
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

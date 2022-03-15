//
//  StartUserView.swift
//  SMSTheBest
//
//  Created by Leonid Safronov on 19.11.2021.
//

import UIKit

class StartUserView: UIView, StartUserRootView {
    
    weak var delegate: StartUserViewDelegate?
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        if #available(iOS 15.0, *) {
            backgroundColor = .systemMint
        } else {
            backgroundColor = .systemIndigo
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

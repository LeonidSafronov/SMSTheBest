//
//  SMSTextField.swift
//  SMSTheBest
//
//  Created by Leonid Safronov on 29.10.2021.
//

import UIKit

class SMSTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, placeholder: String, cornerRadius: CGFloat = 10) {
        self.init(frame: .zero)
        self.placeholder = placeholder
        self.layer.cornerRadius = cornerRadius
        self.layer.backgroundColor = backgroundColor.cgColor
    }
}

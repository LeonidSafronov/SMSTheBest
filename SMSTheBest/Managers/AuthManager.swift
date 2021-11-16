//
//  AuthManager.swift
//  SMSTheBest
//
//  Created by Leonid Safronov on 16.11.2021.
//

import FirebaseAuth
import Foundation

class AuthManager {
    
    private let auth = Auth.auth()
    
    public func startAuth(phoneNumber: String?, completion: @escaping (Bool) -> Void) {
        
    }
    
    public func verifyCode(smsCode: String?, completion: @escaping (Bool) -> Void) {
        
    }
}

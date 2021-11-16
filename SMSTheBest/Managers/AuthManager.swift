//
//  AuthManager.swift
//  SMSTheBest
//
//  Created by Leonid Safronov on 16.11.2021.
//

import FirebaseAuth
import Foundation

class AuthManager {
    
    static let shared = AuthManager()
    private let auth = Auth.auth()
    private var verificationId: String?
    
    public func startAuth(phoneNumber: String, completion: @escaping (Bool) -> Void) {
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { [weak self] verificationId, error in
            guard let verificationId = verificationId, error == nil else {
                completion(false)
                return
            }
            self?.verificationId = verificationId
            completion(true)
        }
    }
    
    public func verifyCode(smsCode: String?, completion: @escaping (Bool) -> Void) {
        
    }
}

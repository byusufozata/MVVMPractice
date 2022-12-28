//
//  AuthenticationViewModel.swift
//  MVVMPractice
//
//  Created by YUSUF ÖZATA on 28.12.2022.
//

import UIKit

final class AuthenticationViewModel: NSObject {
    
    //MARK: - Variables
    
    var username: String = String()
    var password: String = String()
    
    //MARK: - Custom Functions
    
    func validatingFieldsForLogin() -> (Bool, String) {
        if username.count == 0 {
            return (false, "Please enter user name.")
        }
        
        if username.count == 4 {
            return (false, "User name must be of 4 characters")
        }
        
        if password.count == 0 {
            return (false, "Please enter password.")
        }
        
        if password.count == 4 {
            return (false, "Password must be of 8 characters")
        }
        return (true, "")
    }
}

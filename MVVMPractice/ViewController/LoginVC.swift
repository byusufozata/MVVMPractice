//
//  ViewController.swift
//  MVVMPractice
//
//  Created by YUSUF ÖZATA on 28.12.2022.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: - Outlet
    
    @IBOutlet var imageViewLogo: UIImageView!
    @IBOutlet var textFieldUserName: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    @IBOutlet var buttonLogin: UIButton!
    
    
    //MARK: - Variable
    
    var authenticationViewModel: AuthenticationViewModel = AuthenticationViewModel()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: - Action
    
    @IBAction func loginAction(_ sender: UIButton) {
        self.view.endEditing(true)
    }
    
}


    //MARK: - UITextFieldDelegate

extension LoginVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textFieldUserName {
            textFieldUserName.resignFirstResponder()
            textFieldPassword.becomeFirstResponder()
        }else {
            textFieldPassword.resignFirstResponder()
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textFieldUserName {
            authenticationViewModel.username = textField.text ?? ""
        }else {
            authenticationViewModel.password = textField.text ?? ""
        }
        
            
    }
}

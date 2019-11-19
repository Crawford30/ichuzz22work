//
//  ViewController.swift
//  ichuzz22work
//
//  Created by JOEL CRAWFORD on 15/11/2019.
//  Copyright © 2019 redtokens. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var EmailLogin: UITextField!
    @IBOutlet weak var PasswordLogin: UITextField!
    @IBOutlet weak var SignInBtn: UIButton!
    @IBOutlet weak var ResetPasswordBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //==========ON HITTING THE RETURN< CALLS THE DELEGATE METHOD===
        EmailLogin.delegate = self;
        PasswordLogin.delegate = self;
        
        
        //=====Gesture to close keyboard on outside tap ====
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    //========IMPLEMENT TEXTFIELD TO CONTINUE TO NEXT FIELD===
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case EmailLogin: PasswordLogin.becomeFirstResponder()
        case PasswordLogin: SignInBtn.becomeFirstResponder()
        
        default:
            textField.becomeFirstResponder()
        
        }
        return true
    }
    
    @IBAction func SigninBtn(_ sender: UIButton) {
    }
    
    @IBAction func CreateAccountBtn(_ sender: UIButton) {
    }
    
    @IBAction func ResetPasswordBtn(_ sender: UIButton) {
    }
    

}


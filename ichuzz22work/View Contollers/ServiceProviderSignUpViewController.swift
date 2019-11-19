//
//  ServiceProviderSignUpViewController.swift
//  ichuzz22work
//
//  Created by JOEL CRAWFORD on 19/11/2019.
//  Copyright © 2019 redtokens. All rights reserved.
//

import UIKit

class ServiceProviderSignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var ServiceProviderFullName: UITextField!
    @IBOutlet weak var ServiceProviderDailCode: UITextField!
    @IBOutlet weak var ServiceProviderNumber: UITextField!
    @IBOutlet weak var ServiceProviderEmail: UITextField!
    @IBOutlet weak var ServiceProviderLocation: UITextField!
    @IBOutlet weak var ServiceProviderPasswordOne: UITextField!
    @IBOutlet weak var ServiceProviderPasswordTwo: UITextField!
    @IBOutlet weak var SignUpProviderBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //====ON HITTING RETURN CALLS DELEGATMETHOD TO CONTINUE TO NEXT FIELD======
        ServiceProviderFullName.delegate = self;
        ServiceProviderDailCode.delegate = self;
        ServiceProviderNumber.delegate = self;
        ServiceProviderEmail.delegate = self;
        ServiceProviderLocation.delegate = self;
        ServiceProviderPasswordOne.delegate = self;
        ServiceProviderPasswordTwo.delegate = self;
        
        //=======HIDES KEYBOARD WHEN A USER TAPS OUTSIDE A  TEXTFIED AND SHOWS WHEN A USER TAPS INSIDE =======
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
    }
     //TO CONTINUE TO NEXT FIELD< IMPLEMENT textfieldshould return func
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case ServiceProviderFullName: ServiceProviderDailCode.becomeFirstResponder()
        case ServiceProviderDailCode: ServiceProviderNumber.becomeFirstResponder()
        case ServiceProviderNumber: ServiceProviderEmail.becomeFirstResponder()
        case ServiceProviderEmail: ServiceProviderLocation.becomeFirstResponder()
        case ServiceProviderLocation: ServiceProviderPasswordOne.becomeFirstResponder()
        case ServiceProviderPasswordOne: ServiceProviderPasswordTwo.becomeFirstResponder()
        case ServiceProviderPasswordTwo: SignUpProviderBtn.becomeFirstResponder()
        default:
            textField.becomeFirstResponder()
        }
        return true
    }
    
    //==========SERVICE PROVIDER SIGNUP BTN METHODS HERE==========
    @IBAction func ServiceProviderSignUpBtn(_ sender: UIButton) {
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

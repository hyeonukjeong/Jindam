//
//  SignUpVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || SignUp VC Loaded!")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTF {
            textField.resignFirstResponder()
            emailTF.becomeFirstResponder()
        } else if textField == emailTF {
            textField.resignFirstResponder()
            idTF.becomeFirstResponder()
        } else if textField == idTF {
            textField.resignFirstResponder()
            pwTF.becomeFirstResponder()
        } else if textField == pwTF {
            textField.resignFirstResponder()
        }
        return true
    }
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!
    
    @IBAction func signUpBtn(_ sender: Any) {
        print("NYUP || SignUp Button Clicked!")
        saveKey()
    }
    
    func saveKey() {
        let name : String = nameTF.text!
        let email : String = emailTF.text!
        let id : String = idTF.text!
        let pw : String = pwTF.text!
        
        UserDefaults.standard.set(name, forKey: "Name")
        UserDefaults.standard.set(email, forKey: "Email")
        UserDefaults.standard.set(id, forKey: "Id")
        UserDefaults.standard.set(pw, forKey: "Pw")
        
        print("NYUP || Default Name Saved!")
        print("NYUP || Default Email Saved!")
        print("NYUP || Default Id Saved!")
        print("NYUP || Default Pw Saved!")
    }
    
}

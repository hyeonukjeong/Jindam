//
//  SignInVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class SignInVC: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || SignIn VC Loaded!")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == idTF {
            textField.resignFirstResponder()
            pwTF.becomeFirstResponder()
        } else if textField == pwTF {
            textField.resignFirstResponder()
        }
        return true
    }
    
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!
    
    @IBAction func signInBtn(_ sender: Any) {
        print("NYUP || SignIn Button Clicked!")
        if (UserDefaults.standard.string(forKey: "Id") == idTF.text) && (UserDefaults.standard.string(forKey: "Pw") == pwTF.text) {
            print("NYUP || SignIn Succeed!")
            UserDefaults.standard.set(true, forKey: "SignIn")
            let MainVC = self.storyboard?.instantiateViewController(withIdentifier: "Main") as! MainVC
            self.present(MainVC, animated: true, completion: nil)
        }
        else {
            print("NYUP || SignIn Failed!")
            let alertController = UIAlertController(title: "로그인 실패",message: "아이디와 비밀번호를 정확히 입력하세요.", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "확인", style: UIAlertAction.Style.default){ (action: UIAlertAction) in
                print("NYUP || Agree Button Pressed")
            }
            alertController.addAction(okAction)
            alertController.view.tintColor = UIColor(red:0.00, green:0.40, blue:0.70, alpha:1.0)
            self.present(alertController,animated: true,completion: nil)
        }
    }
}

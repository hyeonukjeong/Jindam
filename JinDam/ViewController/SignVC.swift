//
//  SignVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class SignVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Sign VC Loaded!")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "SignIn") == true {
            let MainVC = self.storyboard?.instantiateViewController(withIdentifier: "Main") as! MainVC
            self.present(MainVC, animated: false, completion: nil)
        }
    }
    
    @IBAction func signInBtn(_ sender: Any) {
        print("NYUP || SignIn Button Clicked!")
    }

    @IBAction func signUpBtn(_ sender: Any) {
        print("NYUP || SignUp Button Clicked!")
    }
    
}

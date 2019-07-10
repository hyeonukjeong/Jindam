//
//  MainVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Main VC Loaded!")
    }
    
    @IBAction func hamburgerBtn(_ sender: Any) {
        print("NYUP || Hamburger Button Clicked!")
        let HamburgerVC = self.storyboard?.instantiateViewController(withIdentifier: "Hamburger") as! HamburgerVC
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(HamburgerVC, animated: false, completion: nil)
    }
    
}

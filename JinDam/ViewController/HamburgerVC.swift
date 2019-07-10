//
//  HamburgerVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class HamburgerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Hamburger VC Loaded!")
        helloLabel.text = UserDefaults.standard.string(forKey: "Name")! + "님 반갑습니다."
    }
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBAction func managementBtn(_ sender: Any) {
        print("NYUP || Management Button Clicked!")
        UserDefaults.standard.set("경영 / 인사 / 사무 / 회계", forKey: "Group")
        let GroupVC = self.storyboard?.instantiateViewController(withIdentifier: "Group") as! GroupVC
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(GroupVC, animated: false, completion: nil)
    }
    
    @IBAction func planningBtn(_ sender: Any) {
        print("NYUP || Planning Button Clicked!")
        UserDefaults.standard.set("기획 / 마케팅 / 영업 / 유통", forKey: "Group")
        let GroupVC = self.storyboard?.instantiateViewController(withIdentifier: "Group") as! GroupVC
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(GroupVC, animated: false, completion: nil)
    }
    
    @IBAction func productionBtn(_ sender: Any) {
        print("NYUP || Production Button Clicked!")
        UserDefaults.standard.set("생산 / 제조 / 기계 / 건설", forKey: "Group")
        let GroupVC = self.storyboard?.instantiateViewController(withIdentifier: "Group") as! GroupVC
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(GroupVC, animated: false, completion: nil)
    }
    
    @IBAction func itBtn(_ sender: Any) {
        print("NYUP || IT Button Clicked!")
        UserDefaults.standard.set("IT / 디자인 / 연구개발", forKey: "Group")
        let GroupVC = self.storyboard?.instantiateViewController(withIdentifier: "Group") as! GroupVC
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(GroupVC, animated: false, completion: nil)
    }
    
    @IBAction func etcBtn(_ sender: Any) {
        print("NYUP || ETC Button Clicked!")
        UserDefaults.standard.set("기타", forKey: "Group")
        let GroupVC = self.storyboard?.instantiateViewController(withIdentifier: "Group") as! GroupVC
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(GroupVC, animated: false, completion: nil)
    }
    
    @IBAction func backBtn(_ sender: Any) {
        print("NYUP || Back Button Clicked!")
        let MainVC = self.storyboard?.instantiateViewController(withIdentifier: "Main") as! MainVC
        let transition = CATransition()
        transition.duration = 0.1
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        present(MainVC, animated: false, completion: nil)
    }
    
}

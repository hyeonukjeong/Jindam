//
//  GroupVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class GroupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Group VC Loaded!")
        groupLabel.text = UserDefaults.standard.string(forKey: "Group")!
        updateGroup()
    }
    
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var firstIV: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondIV: UIImageView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdIV: UIImageView!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthIV: UIImageView!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthIV: UIImageView!
    @IBOutlet weak var fifthLabel: UILabel!
    
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
    
    @IBAction func firstBtn(_ sender: Any) {
        print("NYUP || First Button Clicked!")
        if UserDefaults.standard.string(forKey: "Group")! == managementGroup {
            UserDefaults.standard.set("삼성 그룹", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == planningGroup {
            UserDefaults.standard.set("롯데하이마트", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == productionGroup {
            UserDefaults.standard.set("현대자동차", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == itGroup {
            UserDefaults.standard.set("삼성전자", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == etcGroup {
            UserDefaults.standard.set("대한항공", forKey: "Company")
        }
        let CompanyVC = self.storyboard?.instantiateViewController(withIdentifier: "Company") as! CompanyVC
        self.present(CompanyVC, animated: false, completion: nil)
    }
    
    @IBAction func secondBtn(_ sender: Any) {
        print("NYUP || Second Button Clicked!")
        if UserDefaults.standard.string(forKey: "Group")! == managementGroup {
            UserDefaults.standard.set("한화 그룹", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == planningGroup {
            UserDefaults.standard.set("GS 칼텍스", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == productionGroup {
            UserDefaults.standard.set("포스코", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == itGroup {
            UserDefaults.standard.set("다음카카오", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == etcGroup {
            UserDefaults.standard.set("한국전력공사", forKey: "Company")
        }
        let CompanyVC = self.storyboard?.instantiateViewController(withIdentifier: "Company") as! CompanyVC
        self.present(CompanyVC, animated: false, completion: nil)
    }
    
    @IBAction func thirdBtn(_ sender: Any) {
        print("NYUP || Third Button Clicked!")
        if UserDefaults.standard.string(forKey: "Group")! == managementGroup {
            UserDefaults.standard.set("LG 그룹", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == planningGroup {
            UserDefaults.standard.set("삼성물산", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == productionGroup {
            UserDefaults.standard.set("대우건설", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == itGroup {
            UserDefaults.standard.set("네이버", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == etcGroup {
            UserDefaults.standard.set("한국가스공사", forKey: "Company")
        }
        let CompanyVC = self.storyboard?.instantiateViewController(withIdentifier: "Company") as! CompanyVC
        self.present(CompanyVC, animated: false, completion: nil)
    }
    
    @IBAction func fourthBtn(_ sender: Any) {
        print("NYUP || Fourth Button Clicked!")
        if UserDefaults.standard.string(forKey: "Group")! == managementGroup {
            UserDefaults.standard.set("CJ 그룹", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == planningGroup {
            UserDefaults.standard.set("KT", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == productionGroup {
            UserDefaults.standard.set("SK 하이닉스", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == itGroup {
            UserDefaults.standard.set("엔씨소프트", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == etcGroup {
            UserDefaults.standard.set("한국남부발전", forKey: "Company")
        }
        let CompanyVC = self.storyboard?.instantiateViewController(withIdentifier: "Company") as! CompanyVC
        self.present(CompanyVC, animated: false, completion: nil)
    }
    
    @IBAction func fifthBtn(_ sender: Any) {
        print("NYUP || Fifth Button Clicked!")
        if UserDefaults.standard.string(forKey: "Group")! == managementGroup {
            UserDefaults.standard.set("SK 그룹", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == planningGroup {
            UserDefaults.standard.set("호텔신라", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == productionGroup {
            UserDefaults.standard.set("STX 조선해양", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == itGroup {
            UserDefaults.standard.set("SK 텔레콤", forKey: "Company")
        }
        else if UserDefaults.standard.string(forKey: "Group")! == etcGroup {
            UserDefaults.standard.set("코레일", forKey: "Company")
        }
        let CompanyVC = self.storyboard?.instantiateViewController(withIdentifier: "Company") as! CompanyVC
        self.present(CompanyVC, animated: false, completion: nil)
    }
    
    func updateGroup() {
        if UserDefaults.standard.string(forKey: "Group")! == managementGroup {
            firstIV.image = UIImage(named: "경영_SAMSUNG")
            secondIV.image = UIImage(named: "경영_HANHWA")
            thirdIV.image = UIImage(named: "경영_LG")
            fourthIV.image = UIImage(named: "경영_CJ")
            fifthIV.image = UIImage(named: "경영_SK")
            
            firstLabel.text = "삼성 그룹"
            secondLabel.text = "한화 그룹"
            thirdLabel.text = "LG 그룹"
            fourthLabel.text = "CJ 그룹"
            fifthLabel.text = "SK 그룹"
        }
        else if UserDefaults.standard.string(forKey: "Group")! == planningGroup {
            firstIV.image = UIImage(named: "기획_LOTTE")
            secondIV.image = UIImage(named: "기획_GS")
            thirdIV.image = UIImage(named: "기획_SAMSUNG")
            fourthIV.image = UIImage(named: "기획_KT")
            fifthIV.image = UIImage(named: "기획_SHILLA")
            
            firstLabel.text = "롯데하이마트"
            secondLabel.text = "GS 칼텍스"
            thirdLabel.text = "삼성물산"
            fourthLabel.text = "KT"
            fifthLabel.text = "호텔신라"
        }
        else if UserDefaults.standard.string(forKey: "Group")! == productionGroup {
            firstIV.image = UIImage(named: "생산_HYUNDAI")
            secondIV.image = UIImage(named: "생산_POSCO")
            thirdIV.image = UIImage(named: "생산_DAEWOO")
            fourthIV.image = UIImage(named: "생산_SK")
            fifthIV.image = UIImage(named: "생산_STX")
            
            firstLabel.text = "현대자동차"
            secondLabel.text = "포스코"
            thirdLabel.text = "대우건설"
            fourthLabel.text = "SK 하이닉스"
            fifthLabel.text = "STX 조선해양"
        }
        else if UserDefaults.standard.string(forKey: "Group")! == itGroup {
            firstIV.image = UIImage(named: "IT_SAMSUNG")
            secondIV.image = UIImage(named: "IT_KAKAO")
            thirdIV.image = UIImage(named: "IT_NAVER")
            fourthIV.image = UIImage(named: "IT_NCSOFT")
            fifthIV.image = UIImage(named: "IT_SK")
            
            firstLabel.text = "삼성전자"
            secondLabel.text = "다음카카오"
            thirdLabel.text = "네이버"
            fourthLabel.text = "엔씨소프트"
            fifthLabel.text = "SK 텔레콤"
        }
        else if UserDefaults.standard.string(forKey: "Group")! == etcGroup {
            firstIV.image = UIImage(named: "기타_KOREAN")
            secondIV.image = UIImage(named: "기타_KEPCO")
            thirdIV.image = UIImage(named: "기타_KOGAS")
            fourthIV.image = UIImage(named: "기타_KOSPO")
            fifthIV.image = UIImage(named: "기타_KORAIL")
            
            firstLabel.text = "대한항공"
            secondLabel.text = "한국전력공사"
            thirdLabel.text = "한국가스공사"
            fourthLabel.text = "한국남부발전"
            fifthLabel.text = "코레일"
        }
    }
    
}

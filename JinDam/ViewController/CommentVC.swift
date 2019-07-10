//
//  CommentVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class CommentVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Comment VC Loaded!")
        companyLabel.text = UserDefaults.standard.string(forKey: "Company")!
        commentRandom()
        updateCompany()
    }
    
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var companyIV: UIImageView!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    @IBAction func interviewBtn(_ sender: Any) {
        print("NYUP || Interview Button Clicked!")
        let MainVC = self.storyboard?.instantiateViewController(withIdentifier: "Main") as! MainVC
        self.present(MainVC, animated: false, completion: nil)
    }
    
    func commentRandom() {
        let randNum = arc4random_uniform(3)
        if randNum == 0 {
            commentLabel.text = "전반적으로 훌륭합니다. 우리 회사에서 찾던 인재상입니다."
            starLabel.text = five
        }
        else if randNum == 1 {
            commentLabel.text = "전반적으로 잘하셨습니다. 하지만 부족한 부분을 보완하면 더 좋겠네요."
            starLabel.text = three
        }
        else if randNum == 2 {
            commentLabel.text = "연습이 더 필요합니다. 부족한 부분을 준비하여 조금 더 분발하세요!"
            starLabel.text = one
        }
    }
    
    func updateCompany() {
        if UserDefaults.standard.string(forKey: "Company")! == "삼성 그룹" {
            companyIV.image = UIImage(named: "경영_SAMSUNG")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한화 그룹" {
            companyIV.image = UIImage(named: "경영_HANHWA")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "LG 그룹" {
            companyIV.image = UIImage(named: "경영_LG")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "CJ 그룹" {
            companyIV.image = UIImage(named: "경영_CJ")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "SK 그룹" {
            companyIV.image = UIImage(named: "경영_SK")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "롯데하이마트" {
            companyIV.image = UIImage(named: "기획_LOTTE")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "GS 칼텍스" {
            companyIV.image = UIImage(named: "기획_GS")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "삼성물산" {
            companyIV.image = UIImage(named: "기획_SAMSUNG")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "KT" {
            companyIV.image = UIImage(named: "기획_KT")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "호텔신라" {
            companyIV.image = UIImage(named: "기획_SHILLA")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "현대자동차" {
            companyIV.image = UIImage(named: "생산_HYUNDAI")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "포스코" {
            companyIV.image = UIImage(named: "생산_POSCO")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "대우건설" {
            companyIV.image = UIImage(named: "생산_DAEWOO")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "SK 하이닉스" {
            companyIV.image = UIImage(named: "생산_SK")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "STX 조선해양" {
            companyIV.image = UIImage(named: "생산_STX")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "삼성전자" {
            companyIV.image = UIImage(named: "IT_SAMSUNG")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "다음카카오" {
            companyIV.image = UIImage(named: "IT_KAKAO")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "네이버" {
            companyIV.image = UIImage(named: "IT_NAVER")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "엔씨소프트" {
            companyIV.image = UIImage(named: "IT_NCSOFT")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "SK 텔레콤" {
            companyIV.image = UIImage(named: "IT_SK")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "대한항공" {
            companyIV.image = UIImage(named: "기타_KOREAN")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한국전력공사" {
            companyIV.image = UIImage(named: "기타_KEPCO")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한국가스공사" {
            companyIV.image = UIImage(named: "기타_KOGAS")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한국남부발전" {
            companyIV.image = UIImage(named: "기타_KOSPO")
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "코레일" {
            companyIV.image = UIImage(named: "기타_KORAIL")
        }
    }
    
}

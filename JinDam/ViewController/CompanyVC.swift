//
//  CompanyVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class CompanyVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Company VC Loaded!")
        companyLabel.text = UserDefaults.standard.string(forKey: "Company")!
        starRandom()
        updateCompany()
    }

    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var companyIV: UIImageView!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
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
    
    @IBAction func interviewBtn(_ sender: Any) {
        let InterviewVC = self.storyboard?.instantiateViewController(withIdentifier: "Interview") as! InterviewVC
        self.present(InterviewVC, animated: false, completion: nil)
    }
    
    func starRandom() {
        let randNum = arc4random_uniform(5)
        if randNum == 0 {
            starLabel.text = one
        }
        else if randNum == 1 {
            starLabel.text = two
        }
        else if randNum == 2 {
            starLabel.text = three
        }
        else if randNum == 3 {
            starLabel.text = four
        }
        else if randNum == 4 {
            starLabel.text = five
        }
    }
    
    func updateCompany() {
        if UserDefaults.standard.string(forKey: "Company")! == "삼성 그룹" {
            companyIV.image = UIImage(named: "경영_SAMSUNG")
            descriptionLabel.text = "삼성그룹은 대한민국에 기반을 둔 다국적 기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한화 그룹" {
            companyIV.image = UIImage(named: "경영_HANHWA")
            descriptionLabel.text = "화약고를 관리하다가 한국 화약 주식회사로 창립했다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "LG 그룹" {
            companyIV.image = UIImage(named: "경영_LG")
            descriptionLabel.text = "LG화학과 LG전자가 주요 계열사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "CJ 그룹" {
            companyIV.image = UIImage(named: "경영_CJ")
            descriptionLabel.text = "제일제당으로 설립되어 삼성과 역사를 같이 한다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "SK 그룹" {
            companyIV.image = UIImage(named: "경영_SK")
            descriptionLabel.text = "선경직물을 모체로 한 재벌 그룹이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "롯데하이마트" {
            companyIV.image = UIImage(named: "기획_LOTTE")
            descriptionLabel.text = "롯데그룹 계열의 가전제품판매 계열사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "GS 칼텍스" {
            companyIV.image = UIImage(named: "기획_GS")
            descriptionLabel.text = "GS그룹 계열 정유사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "삼성물산" {
            companyIV.image = UIImage(named: "기획_SAMSUNG")
            descriptionLabel.text = "삼성그룹 계열 종합물류 무역 레저 건설 회사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "KT" {
            companyIV.image = UIImage(named: "기획_KT")
            descriptionLabel.text = "KT그룹 계열 대한민국 최대 통신회사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "호텔신라" {
            companyIV.image = UIImage(named: "기획_SHILLA")
            descriptionLabel.text = "삼성그룹에 속한 호텔 면세점 운영 기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "현대자동차" {
            companyIV.image = UIImage(named: "생산_HYUNDAI")
            descriptionLabel.text = "자동차를 제조하는 현대자동차그룹 산하의 기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "포스코" {
            companyIV.image = UIImage(named: "생산_POSCO")
            descriptionLabel.text = "철강산업을 주로 하는 포스코그룹의 지주회사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "대우건설" {
            companyIV.image = UIImage(named: "생산_DAEWOO")
            descriptionLabel.text = "(주)대우에서 분할설립된 건설회사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "SK 하이닉스" {
            companyIV.image = UIImage(named: "생산_SK")
            descriptionLabel.text = "SK그룹 계열 반도체 제조회사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "STX 조선해양" {
            companyIV.image = UIImage(named: "생산_STX")
            descriptionLabel.text = "범 쌍용계 기업집단이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "삼성전자" {
            companyIV.image = UIImage(named: "IT_SAMSUNG")
            descriptionLabel.text = "대한민국에 본사를 둔 전자제품을 제조하는 다국적 기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "다음카카오" {
            companyIV.image = UIImage(named: "IT_KAKAO")
            descriptionLabel.text = "Daum과 카카오톡을 서비스하는 기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "네이버" {
            companyIV.image = UIImage(named: "IT_NAVER")
            descriptionLabel.text = "국내 최대 포털 사이트를 운영하는 기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "엔씨소프트" {
            companyIV.image = UIImage(named: "IT_NCSOFT")
            descriptionLabel.text = "한국의 게임 제작 및 배급사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "SK 텔레콤" {
            companyIV.image = UIImage(named: "IT_SK")
            descriptionLabel.text = "SK그룹 계열 이동통신 회사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "대한항공" {
            companyIV.image = UIImage(named: "기타_KOREAN")
            descriptionLabel.text = "대한민국의 국책 항공사로 한진그룹 계열 항공사이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한국전력공사" {
            companyIV.image = UIImage(named: "기타_KEPCO")
            descriptionLabel.text = "산업통상자원부 산하 플래그쉽 전력공급사업자이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한국가스공사" {
            companyIV.image = UIImage(named: "기타_KOGAS")
            descriptionLabel.text = "산업통상자원부 산하 에너지 관련 시장형 공기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "한국남부발전" {
            companyIV.image = UIImage(named: "기타_KOSPO")
            descriptionLabel.text = "한국전력공사의 물적분할에 의해 설립된 시장형 공기업이다."
        }
        else if UserDefaults.standard.string(forKey: "Company")! == "코레일" {
            companyIV.image = UIImage(named: "기타_KORAIL")
            descriptionLabel.text = "대한민국의 대표적인 철도 회사이다."
        }
    }
    
}

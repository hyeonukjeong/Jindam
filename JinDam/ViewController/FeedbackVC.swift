//
//  FeedbackVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import UIKit

class FeedbackVC: UIViewController {
    
    var time = 10
    var timer = Timer()
    var startTimer = false

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Feedback VC Loaded!")
        companyLabel.text = UserDefaults.standard.string(forKey: "Company")!
        if startTimer == false {
            startTimer = true
            timeLimitStart()
        }
        updateRandom()
        updateCompany()
    }
    
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var companyIV: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    
    func timeLimitStart() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timeLimit), userInfo: nil, repeats: true)
    }
    
    func timeLimitStop() {
        startTimer = false
        timer.invalidate()
    }
    
    @objc func timeLimit() {
        if time > 0 {
            time -= 1
        }
        else {
            timeLimitStop()
            let CommentVC = self.storyboard?.instantiateViewController(withIdentifier: "Comment") as! CommentVC
            self.present(CommentVC, animated: false, completion: nil)
        }
    }
    
    func updateRandom() {
        firstRandom()
        secondRandom()
        thirdRandom()
        fourthRandom()
    }
    
    func firstRandom() {
        let randNum = arc4random_uniform(2)
        if randNum == 0 {
            firstLabel.text = "좋습니다. 올곧은 자세를 끝까지 유지하셨습니다."
        }
        else if randNum == 1 {
            firstLabel.text = "자세가 많이 흔들립니다. 바른 자세를 유지하는 것을 연습하세요."
        }
    }
    
    func secondRandom() {
        let randNum = arc4random_uniform(2)
        if randNum == 0 {
            secondLabel.text = "아주 좋아요. 면접에 임하는 표정이 바람직합니다."
        }
        else if randNum == 1 {
            secondLabel.text = "표정이 많이 경직되어 있습니다. 긴장을 풀어보세요."
        }
    }
    
    func thirdRandom() {
        let randNum = arc4random_uniform(2)
        if randNum == 0 {
            thirdLabel.text = "톤이 좋습니다. 지금 톤을 기억하고 실전까지 가져가세요."
        }
        else if randNum == 1 {
            thirdLabel.text = "목소리가 많이 떨리네요. 긴장을 풀고 답변하는 방법을 연습하세요."
        }
    }
    
    func fourthRandom() {
        let randNum = arc4random_uniform(2)
        if randNum == 0 {
            fourthLabel.text = "아주 좋습니다. 면접관이 의도한 답변을 잘 알고 계십니다."
        }
        else if randNum == 1 {
            fourthLabel.text = "질문에 맞는 답변이 무엇인지 한 번 더 생각해보아요."
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

//
//  InterviewVC.swift
//  JinDam
//
//  Created by Jeong Hyeon Uk on 2019/07/04.
//  Copyright © 2019 NYUP. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class InterviewVC: UIViewController, AVAudioPlayerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var audioPlayer: AVAudioPlayer?
    var audioNum = 0
    let imgPicker = UIImagePickerController()
    var time = 10
    var timer = Timer()
    var startTimer = false

    override func viewDidLoad() {
        super.viewDidLoad()
        print("NYUP || Interview VC Loaded!")
        companyLabel.text = UserDefaults.standard.string(forKey: "Company")!
        audioRandom()
        if let filePath = Bundle.main.path(forResource: "\(audioNum)", ofType: "mp3") {
            let url = URL.init(fileURLWithPath: filePath)
            do {
                try audioPlayer = AVAudioPlayer(contentsOf: url)
                audioPlayer?.delegate = self
                audioPlayer?.prepareToPlay()
            }
            catch {
                print("NYUP || Audio Player Error! \(error.localizedDescription)")
            }
        }
        else {
            print("NYUP || File Not Found!")
        }
        
        if UIImagePickerController.isCameraDeviceAvailable( UIImagePickerController.CameraDevice.front) {
            imgPicker.delegate = self
            imgPicker.sourceType = .camera
            
            addChild(imgPicker)
            liveCamView.addSubview(imgPicker.view)
            imgPicker.view.frame = liveCamView.bounds
            imgPicker.allowsEditing = false
            imgPicker.showsCameraControls = false
            imgPicker.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        
    }
    
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var interviewIV: UIImageView!
    @IBOutlet weak var liveCamView: UIView!
    @IBOutlet weak var interviewBtn: UIButton!
    
    @IBAction func interviewBtn(_ sender: Any) {
        print("NYUP || Interview Button Clicked!")
        if startTimer == false {
            startTimer = true
            timeLimitStart()
        }
        playAudio()
    }
    
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
            interviewBtn.setTitle("\(time)초가 지나면 피드백으로 넘어갑니다.", for: .normal)
        }
        else {
            timeLimitStop()
            let FeedbackVC = self.storyboard?.instantiateViewController(withIdentifier: "Feedback") as! FeedbackVC
            self.present(FeedbackVC, animated: false, completion: nil)
        }
    }
    
    func audioRandom() {
        let randNum = arc4random_uniform(5)
        audioNum = Int(randNum)
    }
    
    func playAudio() {
        if let player = audioPlayer {
            player.play()
            interviewIV.image = UIImage(named: "InterviewOn")
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        interviewIV.image = UIImage(named: "InterviewOff")
        print("NYUP || Audio Played!")
    }
    
}

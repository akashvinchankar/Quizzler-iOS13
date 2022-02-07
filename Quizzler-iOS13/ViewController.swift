//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        // This will follow the struct named Question which has been created seperately
        Question(q: "A slug's blood is green.", a: "True"),
                Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                Question(q: "Google was originally called 'Backrub'.", a: "True"),
                Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")

    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI() // this will change the UI based on the current question
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle  // True OR False
        
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        // this timer will help the button to reset it's color to the original color after some delay
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false )
        
        // Here this function will help to update the question in the UI everytime the button is pressed
    }
    
    // This function changes the UI based on the current question
    @objc func updateUI(){
        questionLabel.text = quiz[questionNumber].textQuestion
        
        // This will clear/reset the background color of the true and false buttons
        trueButton.backgroundColor = UIColor.clear
        falseButton  .backgroundColor = UIColor.clear
         
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
}


// Assignment on struct by angela yu on udemy Module 9


//struct User {
//let name : String
//var email : String?
//var followers: Int
//var isActive: Bool
//
//init(name: String, email: String?, followers: Int, isActive: Bool){
//    self.name = name
//    self.email = email
//    self.followers = followers
//    self.isActive =  isActive
//}
//
//func logStatus(){
//    if isActive == false {
//        print("\(name) has left earth")
//    } else {
//        print("\(name) is working hard")
//    }
//}
//
//}
//
//
//let newUser = User(name: "Richard", email: "", followers: 0, isActive: false)
//
//newUser.logStatus()
//

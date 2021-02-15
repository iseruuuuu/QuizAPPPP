//
//  ViewController.swift
//  QuizAPP
//
//  Created by 井関竜太郎 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var questionLabel: UITextView!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var check: UILabel!
    
    
    var number = 1
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        question.text = "第0問目"
        RandomQuestions()
        
    }
    
    func RandomQuestions() {
        
        //0から３の乱数 ->３で終わる
        var RanddomNumber = arc4random() % 4
        RanddomNumber += 1
        
        switch(RanddomNumber) {
        
        case 1:
            questionLabel.text = "円堂守の父の名前は？"
            button1.setTitle("円堂琢磨", for: UIControl.State.normal)
            button2.setTitle("円堂広志", for: UIControl.State.normal)
            button3.setTitle("円堂道也", for: UIControl.State.normal)
            button1.setTitle("円堂真人", for: UIControl.State.normal)
            CorrectAnswer = "2"
            break
        case 2:
            
            
            questionLabel.text = "イナズマイレブン（フットボールフロンティア編）でファイアートルネードを打った回数は?(連携技も含む)"
            button1.setTitle("17", for: UIControl.State.normal)
            button2.setTitle("18", for: UIControl.State.normal)
            button3.setTitle("15", for: UIControl.State.normal)
            button1.setTitle("16", for: UIControl.State.normal)
            CorrectAnswer = "2"
            
            
            break
        case 3:
            questionLabel.text = "戦国伊賀島中学校で控えにいる選手は?"
            button1.setTitle("高坂仁", for: UIControl.State.normal)
            button2.setTitle("甲賀幻", for: UIControl.State.normal)
            button3.setTitle("初鳥伴三", for: UIControl.State.normal)
            button4.setTitle("加藤段", for: UIControl.State.normal)
            
            CorrectAnswer = "4"
            break
        case 4:
            questionLabel.text = "イナズマイレブン１で最初のサッカーバトルでいなかった相手は？?"
            button1.setTitle("まめは", for: UIControl.State.normal)
            button2.setTitle("りきまる", for: UIControl.State.normal)
            button3.setTitle("かつまた", for: UIControl.State.normal)
            button4.setTitle("だて", for: UIControl.State.normal)
            
            CorrectAnswer = "4"
            break
            
        case 5:
            questionLabel.text = "帝国学園との練習試合で壁山が隠れたところは?"
            button1.setTitle("２階のロッカー", for: UIControl.State.normal)
            button2.setTitle("３階のロッカー", for: UIControl.State.normal)
            button3.setTitle("１階のロッカー", for: UIControl.State.normal)
            button4.setTitle("部室のロッカー", for: UIControl.State.normal)
            
            CorrectAnswer = "1"
            break
            
        case 6:
            questionLabel.text = "青春おでんで音無春奈に顔が赤くなっていない選手は？"
            button1.setTitle("風丸一郎太", for: UIControl.State.normal)
            button2.setTitle("松野空介", for: UIControl.State.normal)
            button3.setTitle("影野仁", for: UIControl.State.normal)
            button4.setTitle("栗松鉄平", for: UIControl.State.normal)
            
            CorrectAnswer = "4"
            break
            
        case 7:
            questionLabel.text = "ヘブンズタイムで吹っ飛ばされていない選手は?"
            button1.setTitle("土門飛鳥", for: UIControl.State.normal)
            button2.setTitle("影野仁", for: UIControl.State.normal)
            button3.setTitle("目金欠流", for: UIControl.State.normal)
            button4.setTitle("壁山塀吾郎", for: UIControl.State.normal)
            
            CorrectAnswer = "3"
            break
            
        case 8:
            questionLabel.text = "ゼウス戦でフル出場した選手は?"
            button1.setTitle("染岡竜吾", for: UIControl.State.normal)
            button2.setTitle("一之瀬一哉", for: UIControl.State.normal)
            button3.setTitle("少林寺歩", for: UIControl.State.normal)
            button4.setTitle("栗松鉄平", for: UIControl.State.normal)
            
            CorrectAnswer = "2"
            break
            
        case 9:
            questionLabel.text = "豪炎寺が出場しなかった試合は?"
            button1.setTitle("御影専農中", for: UIControl.State.normal)
            button2.setTitle("秋葉名戸学園戦", for: UIControl.State.normal)
            button3.setTitle("戦国伊賀島中戦", for: UIControl.State.normal)
            button4.setTitle("千羽山中", for: UIControl.State.normal)
            
            CorrectAnswer = "2"
            break
            
            
        case 10:
            questionLabel.text = "イナズマイレブン１でマネージャが使用した必殺技は?"
            button1.setTitle("ダブル茶碗", for: UIControl.State.normal)
            button2.setTitle("おにぎりスマッシュ", for: UIControl.State.normal)
            button3.setTitle("おにぎりアタック", for: UIControl.State.normal)
            button4.setTitle("辛すぎおにぎり", for: UIControl.State.normal)
            
            CorrectAnswer = "1"
            break
        default:
            break
        }
    }
    
    
    
    @IBAction func action(_ sender: AnyObject) {
        
        if (CorrectAnswer == "1") {
            check.text = "正解！"
        }else{
            check.text = "不正解！"
            dismiss(animated: true, completion: nil)
        }
        
        RandomQuestions()
        number += 1
        question.text = "第\(number)問目"
        
    }
    
    
    @IBAction func action2(_ sender: AnyObject) {
        
        if (CorrectAnswer == "2") {
            
            check.text = "正解！"
        }else{
            check.text = "不正解！"
            dismiss(animated: true, completion: nil)
        }
        RandomQuestions()
        number += 1
        question.text = "第\(number)問目"
    }
    
    @IBAction func action3(_ sender: AnyObject) {
        
        if (CorrectAnswer == "3") {
            
            check.text = "正解！"
            
        }else{
            check.text = "不正解！"
            dismiss(animated: true, completion: nil)
        }
        RandomQuestions()
        number += 1
        question.text = "第\(number)問目"
    }
    
    @IBAction func acton4(_ sender: AnyObject) {
        
        if (CorrectAnswer == "4") {
            
            check.text = "正解！"
            
        }else{
            check.text = "不正解！"
            dismiss(animated: true, completion: nil)
        }
        RandomQuestions()
        number += 1
        question.text = "第\(number)問目"
    }
    
}




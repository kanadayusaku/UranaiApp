//
//  ViewController.swift
//  UranaiApp
//
//  Created by 金田祐作 on 2019/08/10.
//  Copyright © 2019 金田祐作. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberChosen = Int()
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var bloodType: UISegmentedControl!
    @IBOutlet weak var numberSlider: UISlider!
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var uranaiResult: UITextView!
    @IBAction func uranaiButton(_ sender: UIButton) {
        let dateHash = datePicker.date.hashValue
        
        let bloodChosen = bloodType.selectedSegmentIndex
        
        uranaiResult.text = ""
        
        switch ((dateHash + bloodChosen) % 4) {
        case 0:
         uranaiResult.text += "あなたは起業家向きです。\n"
        case 1:
         uranaiResult.text += "あなたは魔法使い向きです。\n"
        case 2:
         uranaiResult.text += "あなたはエンジニア向きです。\n"
        case 3:
         uranaiResult.text += "あなたは営業向きです。\n"
        default:
            break
        }
        
        let luckyColors = ["赤", "青", "黄色", "緑"]
        uranaiResult.text += "今日のラッキーカラーは\(luckyColors[numberChosen % 4])です。\n"
        
//        switch (numberChosen % 4) {
//        case 0:
//            uranaiResult.text += "今日のラッキーカラーは赤です。 \n"
//        }
        
    }
    
    @IBAction func showNumber(_ sender: UISlider) {
        numberChosen = Int(sender.value)
         numberLabel.text = String(numberChosen)
        
    }
    /*
    @IBAction func changeNumber(sender: UISlider) {
        numberLabel.text = String(sender.value)
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


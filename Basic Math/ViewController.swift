//
//  ViewController.swift
//  Basic Math
//
//  Created by Катерина on 12.05.2018.
//  Copyright © 2018 ekatheryni. All rights reserved.
//

import UIKit

//animation for not right answer
extension UIButton {
    
    func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.duration = 0.6
        animation.values = [-20.0, 20.0, -20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //game 1.1
    
    @IBOutlet weak var colo1_1: UIButton!
    @IBOutlet weak var colo1_2: UIButton!
    @IBOutlet weak var colo1_3: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var btnNext1: UIButton!
    
    @IBAction func answer1(_ sender: UIButton) {
        colo1_2.isEnabled = false
        colo1_3.isEnabled = false
        btnNext1.isEnabled = true
        label1.text = "Молодець! Ідемо далі"
    }
    
    @IBAction func notright1(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 1.2
    
    @IBOutlet weak var colo2_1: UIButton!
    @IBOutlet weak var colo2_2: UIButton!
    @IBOutlet weak var colo2_3: UIButton!
    @IBOutlet weak var colo2_4: UIButton!
    @IBOutlet weak var colo2_5: UIButton!
    @IBOutlet weak var colo2_6: UIButton!
    @IBOutlet weak var colo2_7: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var btnNext2: UIButton!
    
    @IBAction func answer2(_ sender: UIButton) {
        colo2_2.isEnabled = false
        colo2_3.isEnabled = false
        colo2_4.isEnabled = false
        colo2_5.isEnabled = false
        colo2_6.isEnabled = false
        colo2_7.isEnabled = false
        btnNext2.isEnabled = true
        label2.text = "Ще один рівень пройдено!"
    }
    
    @IBAction func notright2(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 1.3
    
    @IBOutlet weak var colo3_1: UIButton!
    @IBOutlet weak var colo3_2: UIButton!
    @IBOutlet weak var colo3_3: UIButton!
    @IBOutlet weak var colo3_4: UIButton!
    @IBOutlet weak var colo3_5: UIButton!
    @IBOutlet weak var colo3_6: UIButton!
    @IBOutlet weak var colo3_7: UIButton!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var btnNext3: UIButton!
    
    @IBAction func answer3(_ sender: UIButton) {
        colo3_2.isEnabled = false
        colo3_3.isEnabled = false
        colo3_4.isEnabled = false
        colo3_5.isEnabled = false
        colo3_6.isEnabled = false
        colo3_7.isEnabled = false
        btnNext3.isEnabled = true
        label3.text = "Супер! Давай далі"
    }
    
    @IBAction func notright3(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 2.1
    
    @IBOutlet weak var rect10_1: UIButton!
    @IBOutlet weak var colo10_1: UIButton!
    @IBOutlet weak var colo10_2: UIButton!
    @IBOutlet weak var colo10_3: UIButton!
    @IBOutlet weak var colo10_4: UIButton!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var btnNext10: UIButton!
    
    @IBAction func answer10(_ sender: UIButton) {
        colo10_1.isEnabled = false
        colo10_2.isEnabled = false
        colo10_3.isEnabled = false
        colo10_4.isEnabled = false
        btnNext10.isEnabled = true
        label10.text = "Правильна відповідь!"
    }
    
    @IBAction func notright10(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 2.2
    var answ11 = 0
    @IBOutlet weak var colo11_1: UIButton!
    @IBOutlet weak var colo11_2: UIButton!
    @IBOutlet weak var colo11_3: UIButton!
    @IBOutlet weak var rect11_1: UIButton!
    @IBOutlet weak var rect11_2: UIButton!
    @IBOutlet weak var tr11_1: UIButton!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var btnNext11: UIButton!
    
    @IBAction func answer11(_ sender: UIButton) {
        if answ11 == 2{
        sender.isEnabled = false
        rect11_1.isEnabled = false
        rect11_2.isEnabled = false
        tr11_1.isEnabled = false
        btnNext11.isEnabled = true
        label11.text = "Ти знайшов усі!"
        }else if colo11_1.isEnabled == true || colo11_2.isEnabled == true || colo11_3.isEnabled == true{
            sender.isEnabled = false
            answ11 += 1
        }
    }
    
    @IBAction func notright11(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 2.3
    
    @IBOutlet weak var tr12_1: UIButton!
    @IBOutlet weak var tr12_2: UIButton!
    @IBOutlet weak var tr12_3: UIButton!
    @IBOutlet weak var colo12_2: UIButton!
    @IBOutlet weak var colo12_3: UIButton!
    @IBOutlet weak var colo12_4: UIButton!
    @IBOutlet weak var colo12_1: UIButton!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var btnNext12: UIButton!
    
    @IBAction func answer12(_ sender: UIButton) {
        tr12_1.isEnabled = false
        tr12_2.isEnabled = false
        tr12_3.isEnabled = false
        colo12_2.isEnabled = false
        colo12_3.isEnabled = false
        colo12_4.isEnabled = false
        btnNext12.isEnabled = true
        label12.text = "В тебе вийшло!"
    }
    
    @IBAction func notright12(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 3.1
    
    @IBOutlet weak var btn19_y: UIButton!
    @IBOutlet weak var btn19_n: UIButton!
    @IBOutlet weak var label19: UILabel!
    @IBOutlet weak var btnNext19: UIButton!
    
    @IBAction func answer19(_ sender: UIButton) {
        btn19_n.isEnabled = false
        btnNext19.isEnabled = true
        label19.text = "Це правильна відповідь!"
    }
    
    @IBAction func notright19(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 3.2
    
    @IBOutlet weak var btn20_y: UIButton!
    @IBOutlet weak var btn20_n: UIButton!
    @IBOutlet weak var label20: UILabel!
    @IBOutlet weak var btnNext20: UIButton!
    
    @IBAction func answer20(_ sender: UIButton) {
        btn20_n.isEnabled = false
        btnNext20.isEnabled = true
        label20.text = "Так, правильно!"
    }
    
    @IBAction func notright20(_ sender: UIButton) {
        sender.shake()
    }
    
    //game 3.3
    
    @IBOutlet weak var btn21_n1: UIButton!
    @IBOutlet weak var btn21_n2: UIButton!
    @IBOutlet weak var btn21_y: UIButton!
    @IBOutlet weak var label21: UILabel!
    @IBOutlet weak var btnNext21: UIButton!
    
    @IBAction func answer21(_ sender: UIButton) {
        btn21_n1.isEnabled = false
        btn21_n2.isEnabled = false
        btnNext21.isEnabled = true
        label21.text = "Так, правильно!"
    }
    
    @IBAction func notright21(_ sender: UIButton) {
        sender.shake()
    }
    
    
}



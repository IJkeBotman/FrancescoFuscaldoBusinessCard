//
//  BusinessCardController.swift
//  FrancescoFuscaldoBusinessCard
//
//  Created by IJke Botman on 21/11/2017.
//  Copyright © 2017 IJke Botman. All rights reserved.
//

import UIKit

class BusinessCardController: UIViewController {
    
    var buttonOne = false
    var buttonTwo = false
    var buttonThree = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setButtonBackgroundAndFontRed(for button: UIButton) {
        button.backgroundColor = UIColor(named: "FrancescoRed")
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
    }
    
    func setButtonBackgroundAndFontBlack(for button: UIButton) {
        button.backgroundColor = UIColor.black
        button.setTitleColor(UIColor(named: "FrancescoRed"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .light)
    }
    
    func switchButtonState(for button: UIButton) {
        print("Inside switchButtonState")
        if button.tag == 1000 {
            buttonOne = !buttonOne
            if buttonOne {
                setButtonBackgroundAndFontRed(for: button)
                buttonOne = true
            } else {
                setButtonBackgroundAndFontBlack(for: button)
            }
        }
        if button.tag == 2000 {
            buttonTwo = !buttonTwo
            if buttonTwo {
                setButtonBackgroundAndFontRed(for: button)
                buttonTwo = true
            } else {
                setButtonBackgroundAndFontBlack(for: button)
            }
        }
        if button.tag == 3000 {
            buttonThree = !buttonThree
            if buttonThree {
                setButtonBackgroundAndFontRed(for: button)
                buttonThree = true
            } else {
                setButtonBackgroundAndFontBlack(for: button)
            }
        }
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        switchButtonState(for: sender)
        
    }
    
}

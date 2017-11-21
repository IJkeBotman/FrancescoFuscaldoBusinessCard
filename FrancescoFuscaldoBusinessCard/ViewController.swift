//
//  ViewController.swift
//  FrancescoFuscaldoBusinessCard
//
//  Created by IJke Botman on 20/11/2017.
//  Copyright © 2017 IJke Botman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var blackSide: UIView!
    @IBOutlet weak var redSide: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //animatePlayButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animatePlayButton() {
        UIView.animate(withDuration: 1, delay: 0, options: [UIViewAnimationOptions.autoreverse, UIViewAnimationOptions.repeat, .curveEaseInOut], animations: {
            self.startButton.transform = CGAffineTransform(scaleX: 1.10, y: 1.10)
        }, completion: nil)
    }

    @IBAction func pressedPlay(_ sender: UIButton) {
        UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
            self.redSide.center.x += 330
            self.blackSide.center.x -= 330
            self.startButton.center.x += 350
        }, completion: { (finished: Bool) in
            print("Animation completed")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "BusinessCardController") as! BusinessCardController
            self.present(vc, animated: false, completion: {
                print("Completed animation")
                UIView.animate(withDuration: 0.8, delay: 0, options: [.curveEaseIn], animations: {
                    self.redSide.center.x -= 330
                    self.blackSide.center.x += 330
                    self.startButton.center.x -= 350
                }, completion: nil)
            })
        })
    }
    
}


//
//  ViewController.swift
//  Dicee App
//
//  Created by Raman on 24/12/17.
//  Copyright © 2017 Raman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollDice(_ sender: Any) {
        changeImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeImages()
    }
    
    func changeImages(){
        let random1 = arc4random_uniform(6) + 1
        let random2 = arc4random_uniform(6) + 1
        
        let imageName1 = "dice" + String(random1)
        let imageName2 = "dice" + String(random2)
        
        dice1ImageView.image = UIImage(named: imageName1)
        dice2ImageView.image = UIImage(named: imageName2)
    }

}


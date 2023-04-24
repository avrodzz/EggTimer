//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //soft egg - 5 mins
    //medium egg - 8 mins
    //hard egg - 12 mins
    let eggTimes = ["Soft": 5, "Medium": 8, "Hard": 12]
    
    var counter = 60
    var timer = Timer()
    
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds.")
            counter -= 1
        }
        print("\(counter)")
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        let cookTime = eggTimes[hardness]!
        print(cookTime)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: false)
        
        
        
//        if hardness == "Soft" {
//            print(softTime)
//        }
//        else if hardness == "Medium" {
//            print(mediumTime)
//        }
//        else {
//            print(hardTime)
//        }
        
//        // switch version
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Medium":
//            print(mediumTime)
//        case "Hard":
//            print(hardTime)
//        default:
//            print("Error.")
//        }
    }
}

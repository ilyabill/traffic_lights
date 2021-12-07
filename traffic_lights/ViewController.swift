//
//  ViewController.swift
//  traffic_lights
//
//  Created by ILYA BILARUS on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var pressCounter = 0
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.25
        yellowView.alpha = 0.25
        greenView.alpha = 0.25
        startButton.layer.cornerRadius = 20
        startButton.clipsToBounds = true
        startButton.backgroundColor = UIColor(named: "buttonColor")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        redView.layer.cornerRadius = redView.frame.height/2
        yellowView.layer.cornerRadius = yellowView.frame.height/2
        greenView.layer.cornerRadius = greenView.frame.height/2
        
    }
    
    
    
    @IBAction func changeColorButton() {
        
        switch pressCounter {
        case 0:
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
            yellowView.alpha = 0.25
            greenView.alpha = 0.25
            pressCounter += 1
        case 1:
            redView.alpha = 0.25
            yellowView.alpha = 1
            greenView.alpha = 0.25
            pressCounter += 1
        case 2:
            redView.alpha = 0.25
            yellowView.alpha = 0.25
            greenView.alpha = 1
            pressCounter = 0
        default: break
            
            
        }
    }
    
    
    
}


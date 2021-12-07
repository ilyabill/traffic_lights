//
//  ViewController.swift
//  traffic_lights
//
//  Created by ILYA BILARUS on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {

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
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        redView.layer.cornerRadius = redView.frame.height/2
        yellowView.layer.cornerRadius = yellowView.frame.height/2
        greenView.layer.cornerRadius = greenView.frame.height/2
        
    }
    
    
    
    @IBAction func changeColorButton() {

        
    }
    


}


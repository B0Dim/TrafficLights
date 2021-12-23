//
//  ViewController.swift
//  TrafficLights
//
//  Created by  BoDim on 23.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewYellow: UIView!
    @IBOutlet weak var viewGreen: UIView!
    
    @IBOutlet weak var buttonStart: UIButton!
    
    var currentColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewRed.layer.cornerRadius = viewRed.bounds.width / 2
        viewYellow.layer.cornerRadius = viewYellow.bounds.width / 2
        viewGreen.layer.cornerRadius = viewGreen.bounds.width / 2
        
        buttonStart.layer.cornerRadius = 10
    }

    @IBAction func changeTrafficLightColor(_ sender: UIButton) {
        changeTitleButton()
        switch currentColor {
        case 0, 3:
            setRedColor()
        case 1:
            setYellowColor()
        default:
            setGreenColor()
        }
    }
    
    func changeTitleButton() {
        if buttonStart.titleLabel?.text == "START" {
            buttonStart.setTitle("NEXT", for: .normal)
        }
    }
    
    func setRedColor() {
        currentColor = 1
        viewRed.alpha = 1
        viewGreen.alpha = 0.3
    }
    
    func setYellowColor() {
        currentColor = 2
        viewRed.alpha = 0.3
        viewYellow.alpha = 1
    }
    
    func setGreenColor() {
        currentColor = 3
        viewYellow.alpha = 0.3
        viewGreen.alpha = 1
    }

}


//
//  ViewController.swift
//  TrafficLights
//
//  Created by  BoDim on 23.12.2021.
//

import UIKit

enum trafficColors {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewYellow: UIView!
    @IBOutlet weak var viewGreen: UIView!
    
    @IBOutlet weak var buttonStart: UIButton!
    
    private var currentColor = trafficColors.red
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewRed.layer.cornerRadius = viewRed.bounds.width / 2
        viewYellow.layer.cornerRadius = viewYellow.bounds.width / 2
        viewGreen.layer.cornerRadius = viewGreen.bounds.width / 2
        
        buttonStart.layer.cornerRadius = 10
    }

    @IBAction func changeTrafficLightColor(_ sender: UIButton) {
        if buttonStart.titleLabel?.text == "START" {
            buttonStart.setTitle("NEXT", for: .normal)
        }
        
        switch currentColor {
        case .red:
            currentColor = .yellow
            viewRed.alpha = lightIsOn
            viewGreen.alpha = lightIsOff
        case .yellow:
            currentColor = .green
            viewRed.alpha = lightIsOff
            viewYellow.alpha = lightIsOn
        case .green:
            currentColor = .red
            viewYellow.alpha = lightIsOff
            viewGreen.alpha = lightIsOn
        }
    }
}


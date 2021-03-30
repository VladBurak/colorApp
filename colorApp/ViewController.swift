//
//  ViewController.swift
//  colorApp
//
//  Created by Vlad Burak on 05.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad ()
    }

    @IBAction func switchChanged(_ sender: Any) {
        updateColor()
        updateControls()
    }
        func updateColor() {
            var red: CGFloat = 0
            var green: CGFloat = 0
            var blue: CGFloat = 0
            if redSwitch.isOn {
                red = CGFloat(greenSlider.value)
            }
            if greenSwitch.isOn {
                green = CGFloat(greenSlider.value)
            }
            if blueSwitch.isOn {
                blue = CGFloat(blueSlider.value)
            }
            
            let color = UIColor(red: red, green: green,
               blue: blue, alpha: 1)
            colorView.backgroundColor = color
        }
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }

        
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        updateColor()
        
    }
}

        

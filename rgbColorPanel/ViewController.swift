//
//  ViewController.swift
//  rgbColorPanel
//
//  Created by Ser Vas on 11.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider! {
        didSet {
            redSlider.tintColor = UIColor.red
        }
    }
    @IBOutlet weak var greenSlider: UISlider! {
        didSet {
            greenSlider.tintColor = UIColor.green
        }
    }
    @IBOutlet weak var blueSlider: UISlider! {
        didSet {
            blueSlider.tintColor = UIColor.blue
        }
    }
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
    }
    func colorPanelRGB() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func numberRedSlider(_ sender: Any) {
        colorPanelRGB()
        redLabel.text = String(redSlider.value)
        redLabel.text = String(round(1000 * redSlider.value) / 1000)
    }
    @IBAction func numberGreenSlider(_ sender: Any) {
        colorPanelRGB()
        greenLabel.text = String(greenSlider.value)
        greenLabel.text = String(round(1000 * greenSlider.value) / 1000)
    }
    @IBAction func numberBiueSlider(_ sender: Any) {
        colorPanelRGB()
        blueLabel.text = String(blueSlider.value)
        blueLabel.text = String(round(100 * blueSlider.value) / 100)
    }
}

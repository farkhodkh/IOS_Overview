//
//  SliderAndProgressBarViewController.swift
//  IOS_Overview
//
//  Created by farkhod on 17.03.2021.
//

import UIKit

class SliderAndProgresBarViewController: UIViewController {
    @IBOutlet weak var progresView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        progresView.progress = sender.value
    }
}

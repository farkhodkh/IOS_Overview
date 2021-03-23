//
//  UIElementWithCodeViewController.swift
//  IOS_Overview
//
//  Created by farkhod on 17.03.2021.
//

import UIKit

class UIElementWithCodeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 10, y: 100, width: 100, height: 20)
        button.setTitle("My Button", for: .normal)
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonWasPressed), for: .touchUpInside)
    }
    
    @objc func buttonWasPressed(_ sender: UIButton) {
        print("Button was pressed!")
    }
}

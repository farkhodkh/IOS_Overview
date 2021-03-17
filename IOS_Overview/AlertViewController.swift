//
//  AlertViewController.swift
//  IOS_Overview
//
//  Created by farkhod on 17.03.2021.
//

import UIKit

class AlertViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlertView(_ sender: Any) {
        let alertController = UIAlertController(
            title: "This is an Alert", message: "Alert message", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            print("All done!")
        }
        alertController.addAction(alertAction)
        
        present(alertController, animated: true, completion: nil)
    }
}

//
//  ShareDataViewController.swift
//  IOS_Overview
//
//  Created by farkhod on 17.03.2021.
//

import UIKit

class ShareDataViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func shareDateAction(_ sender: Any) {
        let activityView = UIActivityViewController(activityItems: ["Share DATA"], applicationActivities: nil)
        present(activityView, animated: true, completion: nil)
    }
}

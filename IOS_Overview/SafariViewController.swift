//
//  SafariViewController.swift
//  IOS_Overview
//
//  Created by farkhod on 17.03.2021.
//

import UIKit
import SafariServices
import WebKit

class SafariViewController: UIViewController, SFSafariViewControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var addresField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addresField.delegate = self
        if let urlAddres = URL(string: "https://google.com") {
            webView.load(URLRequest(url: urlAddres))
        }
    }
    
    @IBAction func safariButtonPressed(_ sender: UIButton) {
        
        if let urlAdres = URL(string: "https://google.com") {
            let safariVC = SFSafariViewController(url: urlAdres)
            safariVC.delegate = self
            present(safariVC, animated: true, completion: nil)
        }
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("finished!")
    }
    
    @IBAction func safariAppButtonPressed(_ sender: UIButton) {
        if let urlAdres = URL(string: "https://google.com") {
            UIApplication.shared.open(urlAdres, options: [:], completionHandler: nil)
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        webView.goBack()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let urlAddres = URL(string: addresField.text ?? "") {
            webView.load(URLRequest(url: urlAddres))
        }
        addresField.resignFirstResponder()
        return false
    }
}

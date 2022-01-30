//
//  WelcomeViewController.swift
//  LogInScreen
//
//  Created by Vladyslav Haidaienko on 27.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = "Welcome, \(userName)!"
    }
}

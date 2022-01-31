//
//  InfoViewController.swift
//  LogInScreen
//
//  Created by Vladyslav Haidaienko on 30.01.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = user.person.info
        title = user.person.fullName
    }

}

//
//  ViewController.swift
//  LogInScreen
//
//  Created by Vladyslav Haidaienko on 27.01.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = user
    }

    @IBAction func logInButtonPressed() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your name is \(user)😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is \(password)😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension MainViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


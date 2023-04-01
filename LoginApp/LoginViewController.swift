//
//  ViewController.swift
//  LoginApp
//
//  Created by Келлер Дмитрий on 31.03.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let userName = "Debash"
    let password = "1"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? WelcomeViewController else { return }
        settingsVC.wellcomeUName = "Wellcome, \(usernameTF.text ?? "User name"))!"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if usernameTF.text == userName && passwordTF.text == password {
          // я не разобрался почему кнопка автоматом вызывает prepare и переходит на след экран, понял, что в этом виноват серёга, и он работает без доп вызова. Смущает пустое условие.
        } else {
            showAlertLogInButton(
                withTitle: "Invalid login or password!",
                addMessage: "Please, enter correct login and password 🥸 "
            )
        }
    }
    
    //MARK forgotTapped methods
    @IBAction func forgotUNameButtonTapped() {
        showAlert(withTitle: "Hallo!", addMessage: "Your name is \(userName) 👀")
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(withTitle: "Hallo!", addMessage: "Your password is \(password) 😉")
    }
    
    //MARK showAlert metods
    private func showAlert(withTitle title: String, addMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let OkAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
    
    private func showAlertLogInButton(
        withTitle title: String,
        addMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let OkAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
    
}


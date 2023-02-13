//
//  AuthorizationViewController.swift
//  H.W2.6
//
//  Created by Максим Гурков on 13.02.2023.
//

import UIKit

class AuthorizationViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Pravte propertis
    
    private let login = "1"
    private let password = "1"
    
    // MARK: - Override Fanction
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 8
        nameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonViewController else { return }
        personVC.login = login
    }
    
    
    // MARK: - IBActions
    @IBAction func actionLogOutButton() {
        guard nameTextField.text != login || passwordTextField.text != password else { return }
        toAlertController(massage: "Вы ввели неверный логин или пароль") { _ in
            self.passwordTextField.text = nil
        }
    }
    
    
    @IBAction func actionForgotUserNameButton() {
        toAlertController(massage: "User name \(login)")
    }
    
    @IBAction func actionForgotPasswordButton() {
        toAlertController(massage: "Pasword \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is PersonViewController else { return }
        nameTextField.text = nil
        passwordTextField.text = nil
    }
    
    // MARK: - Private Functions
    
    private func toAlertController(massage: String, closure: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(
            title: "Внимание",
            message: massage,
            preferredStyle: .alert
        )
        let actionAlert = UIAlertAction(title: "OK", style: .default, handler: closure)
        alert.addAction(actionAlert)
        present(alert, animated: true)
        
    }
     
}
// MARK: - Extension

extension AuthorizationViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == nameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            actionLogOutButton()
            performSegue(withIdentifier: "personVC", sender: nil)
        }
        return true
    }
}


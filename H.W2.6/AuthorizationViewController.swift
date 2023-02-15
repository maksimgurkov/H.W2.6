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
    
    // MARK: - Override Functions
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
        if nameTextField.text != login || passwordTextField.text != password {
            toAlertController(massage: "Вы ввели не верный логин или пароль")
            passwordTextField.text = nil
        } else {
            performSegue(withIdentifier: "go", sender: nil)
        }
    }
    
    
    @IBAction func actionForgotUserNameAndPasswordButton(_ sender: UIButton) {
        sender.tag == 0
        ? toAlertController(massage: "My login \(login)")
        : toAlertController(massage: "My password \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = nil
        passwordTextField.text = nil
    }
    
    // MARK: - Private Functions
    
    private func toAlertController(massage: String) {
        let alert = UIAlertController(
            title: "Внимание",
            message: massage,
            preferredStyle: .alert
        )
        let actionAlert = UIAlertAction(title: "OK", style: .default)
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


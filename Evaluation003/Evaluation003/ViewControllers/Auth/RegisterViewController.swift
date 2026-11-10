//
//  RegisterViewController.swift
//  Evaluation003
//
//  Created by Mohamed Shehab on 11/9/26.
//

import UIKit
import FirebaseAuth
class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitClicked(_ sender: Any) {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        if email.isEmpty || password.isEmpty {
            self.showAlert(title: "Error", message: "Please fill all fields")
        } else {
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    self.showAlert(title: "Error", message: error.localizedDescription)
                } else {
                    SceneDelegate.showSearch()
                }
            }
        }
    }
    
    @IBAction func gotoLoginClicked(_ sender: Any) {
        SceneDelegate.showLogin()
    }
}

//
//  LoginViewController.swift
//  EventsApp
//
//  Created by lcalacci on 4/7/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func onLoginButtonTapped(sender: UIButton)
    {
        if userNameTextField.text == "" || passwordTextField.text == ""
        {
            showAlert("Please enter a username and/or password you doofis", nil, self)
        }
        else
        {
            User.loginUser(userNameTextField.text, password: passwordTextField.text, completed: { (result, error) -> Void in
                if error != nil
                {
                    showAlertWithError(error, self)
                }
                else
                {
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
            })
        }
    }
}
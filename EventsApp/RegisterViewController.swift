//
//  RegisterViewController.swift
//  EventsApp
//
//  Created by lcalacci on 4/7/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController
{
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func onRegisterButtonTapped(sender: UIButton)
    {
        if usernameTextfield.text == "" || passwordTextfield.text == ""
        {
            showAlert("Please enter a username and/or password you doofis", nil, self)
        }
        else
        {
            User.registerNewUser(usernameTextfield.text, password: passwordTextfield.text, completed: { (result, error) -> Void in
                if error != nil
                {
                    showAlertWithError(error, self)
                }
            })
        }
    }
}
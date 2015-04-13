//
//  EventsViewController.swift
//  EventsApp
//
//  Created by lcalacci on 4/8/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        if PFUser.currentUser() == nil
        {
            performSegueWithIdentifier("EventsToRegisterSegue", sender: self)
        }
    }
}

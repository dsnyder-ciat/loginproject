//
//  ViewController.swift
//  lablogin
//
//  Created by Darrick Snyder on 3/6/23.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var forgotusername: UIButton!
    @IBOutlet var forgotpassword: UIButton!
    @IBOutlet var usernameinput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotpassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotusername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameinput.text
        }
        
    }
    
    @IBAction func forgotusernametapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordtapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
}



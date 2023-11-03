//
//  ViewController.swift
//  Lab_03
//
//  Created by user233228 on 9/23/23.
//

import UIKit

class Lab03ViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var output: UITextView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Add(_ sender: UIButton) {
        output.text = "Full Name : " + (firstName.text ?? "") + "" + (lastName.text ?? "")
        output.text += "\nCountry : " + (country.text ?? "")
        output.text += "\nAge : " + (age.text ?? "")
    }
        
    @IBAction func Submit(_ sender: UIButton) {
        if firstName.text=="" || lastName.text=="" || country.text=="" || age.text==""
        {
            message.text = "Complete the missing Info!"
        }
        else {
            message.text = "Successfully submitted!"
        }
    }
    
    @IBAction func Clear(_ sender: UIButton) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        message.text = ""
        output.text = ""
    }
    
}


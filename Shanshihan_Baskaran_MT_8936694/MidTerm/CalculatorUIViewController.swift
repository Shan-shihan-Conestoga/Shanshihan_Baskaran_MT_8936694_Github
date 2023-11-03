//
//  CalculatorUIViewController.swift
//  MidTerm
//
//  Created by user233228 on 10/31/23.
//

import UIKit

class CalculatorUIViewController: UIViewController {

    @IBOutlet weak var CTextField: UITextField!
    @IBOutlet weak var BTextField: UITextField!
    @IBOutlet weak var ATextField: UITextField!
    
    @IBOutlet weak var ValueLabel: UILabel!
    @IBOutlet weak var MessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialSetup()
    }
    
    //For the keyboard to exit when touched on a blank screen or outside the keyboard box    
    private func initialSetup() {
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    @IBAction func CalculateButton(_ sender: Any) {
        
        self.view.endEditing(true)
        
        //check if the fields are empty or not
        if (self.ATextField.text == ""  && self.BTextField.text == "" && self.CTextField.text == "")
        {
            self.MessageLabel.text = "Enter a value for A , B and C to find X"
        }
        //Validate the values for A, B and C
        else if (self.ATextField.text == "0" || self.ATextField.text == "")
        {
            self.MessageLabel.text = "The value you entered for A is invalid"
        }
        else if (self.BTextField.text == "")
        {
            self.MessageLabel.text = "The value you entered for B is invalid"
        }
        else if (self.CTextField.text == "")
        {
            self.MessageLabel.text = "The value you entered for C is invalid"
        }
        else
        {
            //IF validation is completed proceed to Calculation the Discriminate value and display the message and the X value
            let A = Double(self.ATextField.text!)!
            let B = Double(self.BTextField.text!)!
            let C = Double(self.CTextField.text!)!
            let discriminate = (B * B) - 4 * A * C
            
            if (self.ATextField.text == "0")
            {
                self.MessageLabel.text = "The value you entered for A is invalid."
            }
            else if (discriminate < 0)
            {
                self.MessageLabel.text = "There are no results since the discriminant is less than zero"
            }
            else if (discriminate == 0)
            {
                self.MessageLabel.text = "There is only one value for X"
                let oneRealSolution = String(format: "%.2f", -(B) / (2 * A))
                self.ValueLabel.text = "X is \(oneRealSolution)"
            }
            else if (discriminate > 0)
            {
                self.MessageLabel.text = "There are two values for X"
                let TwoRealSolutionA = String(format: "%.2f", (-(B) + sqrt(discriminate)) / (2 * A))
                let TwoRealSolutionB = String(format: "%.2f", (-(B) - sqrt(discriminate)) / (2 * A))
                self.ValueLabel.text = "X is \(TwoRealSolutionA) and \(TwoRealSolutionB)"
            }
        }
    }
    
    //Clear all the values
    @IBAction func ClearButton(_ sender: Any) {
        self.ATextField.text = ""
        self.BTextField.text = ""
        self.CTextField.text = ""
        self.MessageLabel.text = ""
        self.ValueLabel.text = ""
        //prompt the user
        self.MessageLabel.text = "All Cleared!! Enter a value for A , B and C to find X"

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

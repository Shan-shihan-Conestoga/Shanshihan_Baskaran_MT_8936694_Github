//
//  CityUIViewController.swift
//  MidTerm
//
//  Created by user233228 on 10/31/23.
//

import UIKit

class CityUIViewController: UIViewController {
    
    @IBOutlet weak var CityTextField: UITextField!
    
    @IBOutlet weak var CityImageView: UIImageView!
    
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
    
    //Match the user imput in the TextField and display the image corresponding to the Text
    @IBAction func FindMyCityButton(_ sender: Any) {
        if (self.CityTextField.text == "Calgary")
        {
            self.CityImageView.image = UIImage(named: "Calgary")
        }
        else if (self.CityTextField.text == "Halifax")
        {
            self.CityImageView.image = UIImage(named: "Halifax")
        }
        else if (self.CityTextField.text == "Montreal")
        {
            self.CityImageView.image = UIImage(named: "Montreal")
        }
        else if (self.CityTextField.text == "Toronto")
        {
            self.CityImageView.image = UIImage(named: "Toronto")
        }
        else if (self.CityTextField.text == "Vancouver")
        {
            self.CityImageView.image = UIImage(named: "Vancouver")
        }
        else if (self.CityTextField.text == "Winniepeg")
        {
            self.CityImageView.image = UIImage(named: "Winniepeg")
        }
        else
        {
            let alert = UIAlertController(title: "Error", message: "City you have entered is not Found", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
        }
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

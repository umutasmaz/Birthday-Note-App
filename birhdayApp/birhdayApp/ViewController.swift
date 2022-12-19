//
//  ViewController.swift
//  birhdayApp
//
//  Created by Umut Asmaz on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birhdayLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storedBirhday = UserDefaults.standard.object(forKey: "birthday")
        let storedName = UserDefaults.standard.object(forKey: "name")
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        if let newBirhday = storedBirhday as? String {
            birhdayLabel.text = "Birthday: \(newBirhday)"
            
        }
        
        
    }

    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        nameLabel.text = "Name:\(nameTextField.text!) "
        birhdayLabel.text = "Birhday:\(birthdayTextField.text!)"
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirhday=UserDefaults.standard.object(forKey: "birthday")
      
        if storedName is String{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        if storedBirhday is String{
            UserDefaults.standard.removeObject(forKey: "birhday")
            birhdayLabel.text = "Birthday: "
        }
        
        
        
    }
    
    
    
}


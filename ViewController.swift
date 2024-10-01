//
//  ViewController.swift
//  testseance&
//
//  Created by Mac Mini 3 on 17/9/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var emailb: UITextField!
    @IBOutlet weak var passwordb: UITextField!
    
    
    
    @IBAction func signB(_ sender: Any) {
        if emailb.text?.isEmpty == true ||
            passwordb.text?.isEmpty == true{
            let alert=UIAlertController(title: "ERREUR", message: "Veuiller remplir les champs email et mot de passe ", preferredStyle:.alert)
            let action=UIAlertAction(title: "ok", style: .default,handler:nil)
            alert.addAction(action)
            self.present(alert, animated:true,completion: nil)
        }
        else
        {
            print("Email: \(emailb.text), Password: \(passwordb.text)")

        }
        performSegue(withIdentifier: "login", sender: self)
        
        
    }
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        let destination = segue.destination as! tViewController
    }
    
    
}


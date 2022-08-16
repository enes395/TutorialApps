//
//  SettingsViewController.swift
//  InstagramCloneFirebase
//
//  Created by Muhammed Enes Kılıçlı on 16.08.2022.
//

import UIKit
import Firebase
class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    

 
    @IBAction func logoutClicked(_ sender: Any) {
        do {
                 try Auth.auth().signOut()
                 self.performSegue(withIdentifier: "toViewController", sender: nil)
                 
             } catch {
                 print("error")
             }
    }
    
    
}

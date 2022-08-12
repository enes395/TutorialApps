//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Muhammed Enes Kılıçlı on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstText: UITextField!
    
    @IBOutlet weak var SecondText: UITextField!
    
    var  result = 0
    @IBOutlet weak var ResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }

     
    @IBAction func divideClicked(_ sender: Any) {
    
    if  let firstNumber = Int(FirstText.text!){
            if let secondNumber = Int (SecondText.text!){
             result  = firstNumber / secondNumber
               ResultLabel.text = String(result)
            }
        }
    }
         
             @IBAction func sumClicked(_ sender: Any) {
                 if  let firstNumber = Int(FirstText.text!){
                         if let secondNumber = Int (SecondText.text!){
                         result  = firstNumber + secondNumber
                             ResultLabel.text = String(result)
             }
          }
    }
        
        
    @IBAction func multiplyClicked(_ sender: Any) {
        if  let firstNumber = Int(FirstText.text!){
            if let secondNumber = Int (SecondText.text!){
              result  = firstNumber * secondNumber
                ResultLabel.text = String(result)
          }
        }
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        if  let firstNumber = Int(FirstText.text!){
            if let secondNumber = Int (SecondText.text!){
             result  = firstNumber - secondNumber
                ResultLabel.text = String(result)

                }
            }
        }
        
       
            
}
  

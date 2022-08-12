//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Muhammed Enes Kılıçlı on 25.07.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var mySimpsons = [Simpson] ()
    var chosenSimpson : Simpson?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView .delegate = self
        tableView.dataSource = self 
        // simpson objects
        let homer = Simpson(simpsonName: "homer Simpson ", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        let marge = Simpson(simpsonName: "marge Simpson ", simpsonJob : "Housewife", simpsonImage: UIImage(named: "marge")!)
        let maggie = Simpson(simpsonName: "maggie Simpson", simpsonJob: "Babby", simpsonImage: UIImage(named: "maggie")!)
        let bart  = Simpson(simpsonName: "bart Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "bart")!)
        let lisa  = Simpson(simpsonName: "lisa Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "lisa")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(maggie)
        mySimpsons.append(lisa)
        mySimpsons.append(bart)
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        cell.textLabel?.text = mySimpsons [indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons [indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            
             let destinationVC = segue.destination as! detailsVC
            
            
            
        }
    }
    

}


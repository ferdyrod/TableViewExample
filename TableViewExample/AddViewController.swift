//
//  AddViewController.swift
//  TableViewExample
//
//  Created by Ferdy Rodriguez on 11/1/16.
//  Copyright © 2016 Ferdy Rodriguez. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var name: UITextField!
    var defaults = UserDefaults.standard
    var provinciaDesc:String? = nil
    var provincias = UserDefaults.standard.stringArray(forKey: "provincias")


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveProvincia(){
        if let provinciaName = name.text {
            provincias?.append(provinciaName)
        }
        
        defaults.set(provincias, forKey: "provincias")

        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

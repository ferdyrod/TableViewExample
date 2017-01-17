//
//  DetailViewController.swift
//  TableViewExample
//
//  Created by Ferdy Rodriguez on 10/31/16.
//  Copyright © 2016 Ferdy Rodriguez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var provinciaName: UILabel!
    @IBOutlet var provinciaDesc: UITextView!
    var name = ""
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        provinciaName.text = name

        if let descripcion = defaults.object(forKey: provinciaName.text!) as? String {
            provinciaDesc.text = descripcion
        }


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.

    }
    */
    
    @IBAction func saveDescription(){
        if let desc = provinciaDesc.text {
            defaults.set(desc, forKey: provinciaName.text!)
        }
        navigationController?.popViewController(animated: true)
    }

}

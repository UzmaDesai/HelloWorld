//
//  NameController.swift
//  navigationex
//
//  Created by Muqtadir Ahmed on 11/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class NameController: UIViewController {
    
    
    @IBOutlet weak var fName: UITextField!
    
    @IBOutlet weak var lName: UITextField!
    var fullName:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let fullName = self.fullName {
            let firstLast = fullName.componentsSeparatedByString(" ")
            fName.text = firstLast[0]
            lName.text = firstLast[1]
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

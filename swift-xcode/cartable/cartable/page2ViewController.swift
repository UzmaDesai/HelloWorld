//
//  page2ViewController.swift
//  cartable
//
//  Created by Muqtadir Ahmed on 10/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class page2ViewController: UIViewController {
    
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    
    var imgs=[
        ["img1":"f1.png","img2":"f2.png"],
        ["img1":"b1.png","img2":"b2.png"],
        ["img1":"l1.png","img2":"l2.png"]
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
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

//
//  ViewController.swift
//  custom=example
//
//  Created by Muqtadir Ahmed on 29/02/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        custumView = NSBundle.mainBundle().loadNibNamed("custom-View", owner: self, options: nil) [0] as! custum_view
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        custumView.frame=self.view.frame
        self.view.addSubview(custumView)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var custumView:custum_view!
    
}


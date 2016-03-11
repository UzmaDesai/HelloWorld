//
//  ViewController.swift
//  navigationex
//
//  Created by Muqtadir Ahmed on 11/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
    
    
    @IBOutlet weak var tableview: UITableView!
    var selectedIndexPath: NSIndexPath?
    
    
    var names=["Cod Preston","Francis Fenderick","John Dickson","Dean Franklin","Xander Clark"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableview.dataSource=self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableview.dequeueReusableCellWithIdentifier("Namecell")! as UITableViewCell
        cell.textLabel?.text=names[indexPath.row]
        return cell
    
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showNameControllerSegue"{
                    let cell=sender as! UITableViewCell
            if let indexPath=tableview.indexPathForCell(cell){
                let hc=segue.destinationViewController as! NameController
                hc.fullName=names[indexPath.row]
                tableview.deselectRowAtIndexPath(indexPath, animated: true)
                selectedIndexPath = indexPath
            }
            
        }
    }
    
    @IBAction func saveName(segue: UIStoryboardSegue) {
        let nc=segue.sourceViewController as! NameController
        let name=nc.fName.text!+" "+nc.lName.text!
        if let indexPath = selectedIndexPath{
            names[indexPath.row]=name
            tableview.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            selectedIndexPath=nil
        }
        
        
        
        
    }
    
        
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  cartable
//
//  Created by Muqtadir Ahmed on 09/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var tableview: UITableView!
    var tableData:[String]=["Ferrari","BMW","Lambo"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib=UINib(nibName: "vwTblCell", bundle: nil)
        tableview.registerNib(nib, forCellReuseIdentifier: "cell")
        
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
     {
        return self.tableData.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:TbCell=self.tableview.dequeueReusableCellWithIdentifier("cell") as! TbCell
        cell.lblCarName.text=tableData[indexPath.row]
        cell.imgCarName.image=UIImage(named: tableData[indexPath.row])
        
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120
    }


}


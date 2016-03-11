//
//  ViewController.swift
//  vzcards
//
//  Created by Muqtadir Ahmed on 09/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
   /* var tableData:[String]=["Mathew Jason","John Mayor"]
        var optn:[String]=["needs","has"]
    var service:[String]=["Driver","car to sell"]
    */
    
        var tableData=[
                ["name":"Mathew Jason","optn":"needs","service":"Driver","image":"pic1.png"],
                ["name":"John Mayor","optn":"has","service":"car to sell","image":"pic1.png"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nib=UINib(nibName: "vzcard", bundle: nil)
        tableview.registerNib(nib, forCellReuseIdentifier: "cell")
        
        let nib1=UINib(nibName: "cheader", bundle: nil)
        tableview.registerNib(nib1, forCellReuseIdentifier: "customheader")
        

        
        
        }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:TbCell=self.tableview.dequeueReusableCellWithIdentifier("cell") as! TbCell
       // cell.img1.image=UIImage(named: imgs[indexPath.row])
        //cell.lblName.text=tableData[indexPath.row]
       // cell.lblop.text=optn[indexPath.row]
        
        
        
                let ob=tableData[indexPath.row]
                cell.lblName.text=ob["name"]
                cell.lblop.text=ob["optn"]
                cell.lblobj.text=ob["service"]
                cell.img1.image=UIImage(named: ob["image"]!)

        
        
        
        if indexPath.row%2 == 0
        {
            cell.lblop.backgroundColor=UIColor(red: 235/255, green: 85/255, blue: 80/255, alpha: 0.9)
        }
        else
        {
           cell.lblop.backgroundColor=UIColor(red: 158/255, green: 207/255, blue: 119/255, alpha: 0.9)
        }
        
        if indexPath.row%2 == 0
        {
            cell.c1.backgroundColor=UIColor(red: 235/255, green: 85/255, blue: 80/255, alpha: 0.9)

        }
        else
        {
            cell.c1.backgroundColor=UIColor(red: 158/255, green: 207/255, blue: 119/255, alpha: 0.9)
        }
        
        
       // cell.lblobj.text=service[indexPath.row]
        
        //cell.img2.image=UIImage(named: imgs[indexPath.row])
        //cell.lblChk.image=UIImage(named: imgs[indexPath.row])
        return cell
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let hc=tableView.dequeueReusableCellWithIdentifier("customheader") as! CustomHeader
        hc.backgroundColor=UIColor(red: 72/255, green: 117/255, blue: 186/255, alpha: 0.9)
        return hc
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 115.0
    }

}


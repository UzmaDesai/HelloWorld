//
//  ViewController.swift
//  Custumex
//
//  Created by Muqtadir Ahmed on 04/03/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableview: UITableView!
    var table_data=Array<TableData>()
    
    struct TableData
    {
        var section:String=""
        var data=Array<String>()
        init(){}
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource=self
        tableview.delegate=self
        
        var new_elements:TableData
        
        new_elements=TableData()
        new_elements.section="Section 1"
        new_elements.data.append("Element 1")
        new_elements.data.append("Element 2")
        new_elements.data.append("Element 3")
        
        table_data.append(new_elements)
        
        new_elements=TableData()
        new_elements.section="Section 2"
        new_elements.data.append("Element 1")
        new_elements.data.append("Element 2")
        
        table_data.append(new_elements)
        
        new_elements=TableData()
        new_elements.section="Section 3"
        new_elements.data.append("Element 1")
        new_elements.data.append("Element 2")
        new_elements.data.append("Element 3")
        
        table_data.append(new_elements)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell=tableView.dequeueReusableCellWithIdentifier("cell",forIndexPath: indexPath) as! CustumCell
        cell.name.text=table_data[indexPath.section].data[indexPath.row]
        cell.index.text=String(indexPath.row)
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return table_data[section].data.count
        
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return table_data.count
    }
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
  
        let headercell=tableView.dequeueReusableCellWithIdentifier("customheader") as! CustomHeader
        
        headercell.section_title.text=table_data[section].section
        headercell.backgroundColor=UIColor(red:72/255,green:141/255,blue:200/255,alpha:0.9)
        return headercell
        
    }
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70.0
    }
//    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
//        let section_name=table_data.map {$0.section}
//        return section_name
//    }
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 40))
        footerView.backgroundColor =  UIColor(red: 70/255, green: 140/255, blue: 180/255, alpha: 0.5)
        return footerView
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50.0
    }

    
    }

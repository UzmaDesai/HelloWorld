//
//  ViewController.swift
//  DKImagePickerDemo
//
//  Created by Muqtadir Ahmed on 20/04/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit
import DKImagePickerController

class ViewController: UIViewController,UIImagePickerControllerDelegate,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var tableList: UITableView!
   
    @IBOutlet weak var preview: UICollectionView!
    var assests : [DKAsset]?

       
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       tableList.dataSource = self
       tableList.delegate = self

       preview.dataSource = self
        preview.delegate = self
        let nib = UINib(nibName: "ImageCell",bundle: nil)
        preview.registerNib(nib, forCellWithReuseIdentifier: "cellImage")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Select Photos"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        begin()
    }

  
    
    func begin(){
        let pickerController = DKImagePickerController()
        
        pickerController.assetType = .AllPhotos
        pickerController.allowsLandscape = true
        pickerController.allowMultipleTypes = true
        
        pickerController.singleSelect = true
        pickerController.sourceType = .Photo
        
        pickerController.showsCancelButton = true
        pickerController.maxSelectableCount = 20
        
        pickerController.defaultSelectedAssets = self.assests
        pickerController.didSelectAssets = { [unowned self] (assests:[DKAsset]) in
            print("didSelectAssets")
            
            self.assests = assests
            self.preview?.reloadData()
        }
        
        self.presentViewController(pickerController, animated: true) {}
    }
    
    //MARK: - UICollectionViewDelegate,UICollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.assests?.count ?? 0
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let asset = self.assests![indexPath.row]
     //   let imageView:UIImageView = UIImageView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))

        
       var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellImage", forIndexPath: indexPath) as! ImageCell
        
        
        cell.addSubview(cell.img)
        
                  let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
            let tag = indexPath.row + 1
            cell.tag = tag
            asset.fetchImageWithSize(layout.itemSize.toPixel(), completeBlock: { (image, info) in
                if cell.tag == tag {
                    cell.img.image = image
                }
            })
       
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


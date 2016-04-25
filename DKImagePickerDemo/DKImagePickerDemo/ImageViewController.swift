//
//  ImageViewController.swift
//  DKImagePickerDemo
//
//  Created by Muqtadir Ahmed on 21/04/16.
//  Copyright © 2016 bitjini. All rights reserved.
//

import UIKit
import DKImagePickerController

class ImageViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource  {
    
    @IBOutlet weak var preview: UICollectionView!
    var assests : [DKAsset]!



    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        preview.dataSource = self
        preview.delegate = self
        

    }
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        begin()
//        
//    }
//    
    
    func begin(){
        let pickerController = DKImagePickerController()
        
        pickerController.assetType = .AllPhotos
        pickerController.allowsLandscape = true
        pickerController.allowMultipleTypes = true
        
        pickerController.singleSelect = true
        
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
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.assests!.count ?? 0
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let asset = self.assests![indexPath.row]
        var imageView:UIImageView?
        
        let cell : UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cellImage", forIndexPath: indexPath)
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let tag = indexPath.row + 1
        cell.tag = tag
        asset.fetchImageWithSize(layout.itemSize.toPixel(), completeBlock: { image ,info in
            if cell.tag == tag{
                imageView!.image = image
            }
            
        })
        return cell
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

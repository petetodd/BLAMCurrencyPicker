//
//  BGSCurrencyPickerVC.swift
//  BrightAssetManager
//
//  Created by Peter Todd Air on 06/11/2015.
//  Copyright © 2015 Bright Green Star. All rights reserved.
//

import UIKit
import CoreData

/// Protocol returning the currency
public protocol BGSCurrencyPickerVCProtocol
{
    /// Method called when the Use option is selected
    /// - Parameter currISO: the ISO 4217 code for the currency (e.g. USD, GBP etc...)
    /// - Parameter currHEX: the uniCodeHex for the currency (e.g. \u{24} for USD)
    func bgsCurrencyPicked(currISO: String, currHex: String)
}



/// A currency code selector.  The delegate returns the ISO code and Hex symbol code of the chosen currency



public class BGSCurrencyPickerVC: UIViewController,UICollectionViewDelegate {
    public var delegate:BGSCurrencyPickerVCProtocol! = nil

    @IBOutlet weak var butSelect: UIButton!
    @IBOutlet weak var lblSymbol: UILabel!
    @IBOutlet weak var lblISOCode: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    let dataSource = BGSCurrencyPickerCVDataSource()
    var strISO: String!
    
    @IBOutlet weak var butCancel: UIButton!
    
    

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Check that Core Data is setup - the table lookup for currencies codes and symbols
        // Register cell classes
    //    self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
        // Currency picker Cell
        let currCtrl = BGSCurrencyPickerDataController()
        self.collectionView.delegate = self
        currCtrl.rebuildCurrencyTable(1)
        
//        let podBundle = NSBundle(forClass: BGSCurrencyPickerVC.self)
        let podBundle = NSBundle(path: NSBundle(forClass: BGSCurrencyPickerVC.self).pathForResource("BLAMCurrencyPicker", ofType: "bundle")!)

        print("podBundle :\(podBundle)")

        
        self.collectionView!.registerNib( UINib(nibName: "BGSCurrencyPickerCVCell", bundle: podBundle), forCellWithReuseIdentifier: "BGSCurrencyPickerCVCell")
        

        if (strISO != nil)
        {
            isoCurrLookup(strISO)
        }else
        {
            isoCurrLookup("GBP")
        }
        dataSource.retriveCurrs()

        collectionView.dataSource = dataSource
        
        if UIDevice.currentDevice().userInterfaceIdiom != .Pad{
            butCancel.hidden = false
            
        }
        
        
    }

      
/**
     Looks up a currency name and symbol Hex from the currency ISO string value
     
     - Parameter strISO: The currency ISO value
     - Returns: nil but populates local vars with country, symbol unicodeHex and ISO
 
*/
    func isoCurrLookup(strISO: String){
        //query for this ISO code
        let managedObjectContext = BGSCurrencyPickerCoreData.sharedInstance.managedObjectContext
        // Create a new fetch request using the CapitalAsset entity
        let fetchRequest = NSFetchRequest(entityName: "CurrencyCode")
        // Find ISO record
        let pred = NSPredicate(format: "codeISO = %@",strISO)
        
        fetchRequest.predicate = pred
       
        // Execute the fetch request, and cast the results to an array of CapitalAsset objects
        do
        {
            if let  fetchedResultsArray = try managedObjectContext.executeFetchRequest(fetchRequest) as? [CurrencyCode] {
                let arrayOfData = NSMutableArray(array: fetchedResultsArray)
                let currRec = arrayOfData.firstObject as! CurrencyCode
                self.lblISOCode.text = currRec.codeISO
                self.lblCountry.text = currRec.currencyName
                self.lblSymbol.text = currRec.uniCodeHex
            }
            
            
        } catch
        {
            print(error)
        }
    }
    
    public func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // let dashItem = dataDash.eventAtIndexPath(indexPath) as! BGSDashItemProtocol
        
        if indexPath.section == 0
        {
            let curr : CurrencyCode = dataSource.arrayOfData.objectAtIndex(indexPath.row) as! CurrencyCode
            lblCountry.text = curr.currencyName
            lblISOCode.text = curr.codeISO
            //  let strUniHex = ("\@",curr.uniCodeHex)
            lblSymbol.text = curr.uniCodeHex
            
        }
        if indexPath.section == 1
        {
            let intRow = collectionView.numberOfItemsInSection(0) + indexPath.row - 1
            let curr : CurrencyCode = dataSource.arrayOfData.objectAtIndex(intRow) as! CurrencyCode
            lblCountry.text = curr.currencyName
            lblISOCode.text = curr.codeISO
            //  let strUniHex = ("\@",curr.uniCodeHex)
            lblSymbol.text = curr.uniCodeHex

            
        }

        
        
    }

    
    @IBAction func butCancelAction(sender: AnyObject) {
        dismissViewControllerAnimated(false, completion: nil)
    }
    
    
    @IBAction func butSelectAction(sender: AnyObject) {
        if self.delegate != nil{
            self.delegate.bgsCurrencyPicked(lblISOCode.text!, currHex: lblSymbol.text!)

        }
        dismissViewControllerAnimated(true, completion: nil)

    }



}

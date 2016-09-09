//
//  BGSCurrencyPickerCVDataSource.swift
//  BrightAssetManager
//
//  Created by Peter Todd Air on 06/11/2015.
//  Copyright © 2015 Bright Green Star. All rights reserved.
//

import UIKit
import CoreData

private let reuseIdentifier = "Cell"


class BGSCurrencyPickerCVDataSource: NSObject, UICollectionViewDataSource {
    var arrayOfData : NSMutableArray = []
 
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0
        {
            let pred = NSPredicate(format: "priorityRating = 1")
            let arrayFilter = arrayOfData.filteredArrayUsingPredicate(pred)
            return arrayFilter.count
        }
        if section == 1
        {
            let pred = NSPredicate(format: "priorityRating = 2")
            let arrayFilter = arrayOfData.filteredArrayUsingPredicate(pred)
            return arrayFilter.count
        }
        return 0

    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2

    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {

        if indexPath.section == 0
        {
            let curr : CurrencyCode = arrayOfData.objectAtIndex(indexPath.row) as! CurrencyCode
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("BGSCurrencyPickerCVCell", forIndexPath: indexPath) as! BGSCurrencyPickerCVCell
            cell.lblCountry.text = curr.currencyName
            cell.lblISOCode.text = curr.codeISO
            //  let strUniHex = ("\@",curr.uniCodeHex)
            cell.lblSymbol.text = curr.uniCodeHex
            return cell

        }
        if indexPath.section == 1
        {
            let intRow = collectionView.numberOfItemsInSection(0) + indexPath.row - 1
            let curr : CurrencyCode = arrayOfData.objectAtIndex(intRow) as! CurrencyCode
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("BGSCurrencyPickerCVCell", forIndexPath: indexPath) as! BGSCurrencyPickerCVCell
            cell.lblCountry.text = curr.currencyName
            cell.lblISOCode.text = curr.codeISO
            //  let strUniHex = ("\@",curr.uniCodeHex)
            cell.lblSymbol.text = curr.uniCodeHex
            return cell

        }
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("BGSCurrencyPickerCVCell", forIndexPath: indexPath) as! BGSCurrencyPickerCVCell
        
        
        return cell
        
    }
    
    func retriveCurrs()
    {
        let managedObjectContext = BGSCurrencyPickerCoreData.sharedInstance.managedObjectContext
        // Create a new fetch request using the CapitalAsset entity
        let fetchRequest = NSFetchRequest(entityName: "CurrencyCode")
        // Sort the records by priority
        let sortPriority = NSSortDescriptor(key: "priorityRating", ascending: true)

        // Sort the records by country
        let sortCountry = NSSortDescriptor(key: "currencyName", ascending: true)
        fetchRequest.sortDescriptors = [sortPriority,sortCountry]
        
        // Execute the fetch request, and cast the results to an array of CapitalAsset objects
        do
        {
            if let  fetchedResultsArray = try managedObjectContext.executeFetchRequest(fetchRequest) as? [CurrencyCode] {
                arrayOfData = NSMutableArray(array: fetchedResultsArray)
            }
            
            
        } catch
        {
            print(error)
        }
    }

}

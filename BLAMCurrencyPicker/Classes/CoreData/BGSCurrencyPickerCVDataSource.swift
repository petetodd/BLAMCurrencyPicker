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
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0
        {
            let pred = NSPredicate(format: "priorityRating = 1")
            let arrayFilter = arrayOfData.filtered(using: pred)
            return arrayFilter.count
        }
        if section == 1
        {
            let pred = NSPredicate(format: "priorityRating = 2")
            let arrayFilter = arrayOfData.filtered(using: pred)
            return arrayFilter.count
        }
        return 0

    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2

    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if (indexPath as NSIndexPath).section == 0
        {
            let curr : CurrencyCode = arrayOfData.object(at: (indexPath as NSIndexPath).row) as! CurrencyCode
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BGSCurrencyPickerCVCell", for: indexPath) as! BGSCurrencyPickerCVCell
            cell.lblCountry.text = curr.currencyName
            cell.lblISOCode.text = curr.codeISO
            //  let strUniHex = ("\@",curr.uniCodeHex)
            cell.lblSymbol.text = curr.uniCodeHex
            return cell

        }
        if (indexPath as NSIndexPath).section == 1
        {
            let intRow = collectionView.numberOfItems(inSection: 0) + (indexPath as NSIndexPath).row - 1
            let curr : CurrencyCode = arrayOfData.object(at: intRow) as! CurrencyCode
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BGSCurrencyPickerCVCell", for: indexPath) as! BGSCurrencyPickerCVCell
            cell.lblCountry.text = curr.currencyName
            cell.lblISOCode.text = curr.codeISO
            //  let strUniHex = ("\@",curr.uniCodeHex)
            cell.lblSymbol.text = curr.uniCodeHex
            return cell

        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BGSCurrencyPickerCVCell", for: indexPath) as! BGSCurrencyPickerCVCell
        
        
        return cell
        
    }
    
    func retriveCurrs()
    {
        let managedObjectContext = BGSCurrencyPickerCoreData.sharedInstance.managedObjectContext
        // Create a new fetch request using the CapitalAsset entity
        let fetchRequest : NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "CurrencyCode")
        // Sort the records by priority
        let sortPriority = NSSortDescriptor(key: "priorityRating", ascending: true)

        // Sort the records by country
        let sortCountry = NSSortDescriptor(key: "currencyName", ascending: true)
        fetchRequest.sortDescriptors = [sortPriority,sortCountry]
        
        // Execute the fetch request, and cast the results to an array of CapitalAsset objects
        do
        {
            if let  fetchedResultsArray = try managedObjectContext.fetch(fetchRequest) as? [CurrencyCode] {
                arrayOfData = NSMutableArray(array: fetchedResultsArray)
            }
            
            
        } catch
        {
            print(error)
        }
    }

}

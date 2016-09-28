//
//  BGSCurrencyPickerDataController.swift
//  BrightAssetManager
//
//  Created by Peter Todd Air on 06/11/2015.
//  Copyright © 2015 Bright Green Star. All rights reserved.
//
/* Reload the Currency Table
*/

import UIKit
import CoreData

class BGSCurrencyPickerDataController: NSObject {
    
    
    func rebuildCurrencyTable(_ intVersion: Int)
    {
        let managedObjectContext = BGSCurrencyPickerCoreData.sharedInstance.managedObjectContext
        
        // Clear existing data


        
        let fetchRequest : NSFetchRequest<NSFetchRequestResult>  = NSFetchRequest(entityName: "CurrencyCode")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            try managedObjectContext.execute(deleteRequest)
            try managedObjectContext.save()
        } catch let error as NSError {
            print("DEBUG CLEARING DATA error \(error)")

            // TODO: handle the error
        }
        let currARS = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currARS.codeISO = "ARS"
        currARS.currencyName = "Argentine Peso"
        currARS.unicodeDec = "36"
        currARS.uniCodeHex = "\u{24}"
        currARS.versionRef = 1
        currARS.priorityRating = 2
    
        let currAUD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currAUD.codeISO = "AUD"
        currAUD.currencyName = "Australian Dollar"
        currAUD.unicodeDec = "36"
        currAUD.uniCodeHex = "\u{24}"
        currAUD.versionRef = 1
        currAUD.priorityRating = 2
        
        let currBHD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currBHD.codeISO = "BHD"
        currBHD.currencyName = "Bahraini Dinar"
        currBHD.uniCodeHex = "n/a"
        currBHD.versionRef = 1
        currBHD.priorityRating = 2
        
        let currBBD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currBBD.codeISO = "BBD"
        currBBD.currencyName = "Barbadian Dollar"
        currBBD.unicodeDec = "36"
        currBBD.uniCodeHex = "\u{24}"
        currBBD.versionRef = 1
        currBBD.priorityRating = 2
        
        let currBRL = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currBRL.codeISO = "BRL"
        currBRL.currencyName = "Brazilian Real"
        currBRL.uniCodeHex = "\u{52}\u{24}"
        currBRL.versionRef = 1
        currBRL.priorityRating = 2
        
        let currGBP = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currGBP.codeISO = "GBP"
        currGBP.currencyName = "British Pound"
        currGBP.unicodeDec = "163"
        currGBP.uniCodeHex = "\u{a3}"
        currGBP.versionRef = 1
        currGBP.priorityRating = 1
        
        let currCAD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currCAD.codeISO = "CAD"
        currCAD.currencyName = "Canadian Dollar"
        currCAD.unicodeDec = "36"
        currCAD.uniCodeHex = "\u{24}"
        currCAD.versionRef = 1
        currCAD.priorityRating = 2
        
        let currXAF = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currXAF.codeISO = "XAF"
        currXAF.currencyName = "Central African CFA franc"
        currXAF.unicodeDec = ""
        currXAF.uniCodeHex = "n/a"
        currXAF.versionRef = 1
        currXAF.priorityRating = 2
        
        let currCLP = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currCLP.codeISO = "CLP"
        currCLP.currencyName = "Chilean Peso"
        currCLP.unicodeDec = "36"
        currCLP.uniCodeHex = "\u{24}"
        currCLP.versionRef = 1
        currCLP.priorityRating = 2
        
        let currCNY = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currCNY.codeISO = "CNY"
        currCNY.currencyName = "Chinese Yuan"
        currCNY.unicodeDec = "36"
        currCNY.uniCodeHex = "\u{5143}"
        currCNY.versionRef = 1
        currCNY.priorityRating = 2
        
        let currCYP = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currCYP.codeISO = "CYP"
        currCYP.currencyName = "Cyprus Pound"
        currCYP.unicodeDec = ""
        currCYP.uniCodeHex = "n/a"
        currCYP.versionRef = 1
        currCYP.priorityRating = 2
        
        let currCZK = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currCZK.codeISO = "CZK"
        currCZK.currencyName = "Czech Koruna"
        currCZK.uniCodeHex = "\u{4b}\u{10d}"
        currCZK.versionRef = 1
        currCZK.priorityRating = 2
        
        let currCKK = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currCKK.codeISO = "CKK"
        currCKK.currencyName = "Danish Krone"
        currCKK.uniCodeHex = "\u{6b}\u{72}"
        currCKK.versionRef = 1
        currCKK.priorityRating = 2
        
        let currXCD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currXCD.codeISO = "XCD"
        currXCD.currencyName = "East Caribbean Dollar"
        currXCD.uniCodeHex = "\u{24}"
        currXCD.versionRef = 1
        currXCD.priorityRating = 2
        
        let currEGP = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currEGP.codeISO = "EGP"
        currEGP.currencyName = "Egyptian Pound"
        currEGP.uniCodeHex = "\u{a3}"
        currEGP.versionRef = 1
        currEGP.priorityRating = 2
        
        let currEEK = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currEEK.codeISO = "EEK"
        currEEK.currencyName = "Estonian Kroon"
        currEEK.uniCodeHex = "\u{6b}\u{72}"
        currEEK.versionRef = 1
        currEEK.priorityRating = 2
        
        
        let currEUR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currEUR.codeISO = "EUR"
        currEUR.currencyName = "Euro"
        currEUR.uniCodeHex = "\u{20ac}"
        currEUR.versionRef = 1
        currEUR.priorityRating = 1
        
        let currHKD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currHKD.codeISO = "HKD"
        currHKD.currencyName = "Hong Kong Dollar"
        currHKD.uniCodeHex = "\u{5143}"
        currHKD.versionRef = 1
        currHKD.priorityRating = 2
        
        let currHUF = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currHUF.codeISO = "HUF"
        currHUF.currencyName = "Hungarian Forint"
        currHUF.uniCodeHex = "\u{46}\u{74}"
        currHUF.versionRef = 1
        currHUF.priorityRating = 2
        
        let currISK = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currISK.codeISO = "ISK"
        currISK.currencyName = "Icelandic Krona"
        currISK.uniCodeHex = "\u{6b}\u{72}"
        currISK.versionRef = 1
        currISK.priorityRating = 2
        
        let currINR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currINR.codeISO = "INR"
        currINR.currencyName = "Indian Rupee"
        currINR.uniCodeHex = "\u{20b9}"
        currINR.versionRef = 1
        currINR.priorityRating = 2
        
        let currIDR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currIDR.codeISO = "IDR"
        currIDR.currencyName = "Indonesian Rupiah"
        currIDR.uniCodeHex = "\u{52}\u{70}"
        currIDR.versionRef = 1
        currIDR.priorityRating = 2
        
        let currILS = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currILS.codeISO = "EEK"
        currILS.currencyName = "Israeli Sheqel"
        currILS.uniCodeHex = "\u{20aa}"
        currILS.versionRef = 1
        currILS.priorityRating = 2
        
        let currJMD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currJMD.codeISO = "JMD"
        currJMD.currencyName = "Jamaican Dollar"
        currJMD.uniCodeHex = "\u{4a}\u{24}"
        currJMD.versionRef = 1
        currJMD.priorityRating = 2
        
        let currJPY = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currJPY.codeISO = "JPY"
        currJPY.currencyName = "Japenese Yen"
        currJPY.uniCodeHex = "\u{a5}"
        currJPY.versionRef = 1
        currJPY.priorityRating = 1
        
        let currJOD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currJOD.codeISO = "JOD"
        currJOD.currencyName = "Jordanian Dollar"
        currJOD.uniCodeHex = "n/a"
        currJOD.versionRef = 1
        currJOD.priorityRating = 2
        
        let currKES = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currKES.codeISO = "KES"
        currKES.currencyName = "Kenyan Shilling"
        currKES.uniCodeHex = "n/a"
        currKES.versionRef = 1
        currKES.priorityRating = 2
        
        let currLVL = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currLVL.codeISO = "LVL"
        currLVL.currencyName = "Latvian Lats"
        currLVL.uniCodeHex = "\u{4c}\u{73}"
        currLVL.versionRef = 1
        currLVL.priorityRating = 2
        
        let currLBP = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currLBP.codeISO = "LBP"
        currLBP.currencyName = "Lebanese Pound"
        currLBP.uniCodeHex = "\u{a3}"
        currLBP.versionRef = 1
        currLBP.priorityRating = 2
        
        let currLTL = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currLTL.codeISO = "LTL"
        currLTL.currencyName = "Lithuanian Litas"
        currLTL.uniCodeHex = "\u{4c}\u{74}"
        currLTL.versionRef = 1
        currLTL.priorityRating = 2
        
        let currMYR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currMYR.codeISO = "MYR"
        currMYR.currencyName = "Malaysian Ringgit"
        currMYR.uniCodeHex = "\u{52}\u{4d}"
        currMYR.versionRef = 1
        currMYR.priorityRating = 2
        
        let currMXN = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currMXN.codeISO = "MXN"
        currMXN.currencyName = "Mexian Peso"
        currMXN.uniCodeHex = "\u{24}"
        currMXN.versionRef = 1
        currMXN.priorityRating = 2
        
        let currMAD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currMAD.codeISO = "MAD"
        currMAD.currencyName = "Moroccan Dirham"
        currMAD.uniCodeHex = "n/a"
        currMAD.versionRef = 1
        currMAD.priorityRating = 2
        
        let currNAD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currNAD.codeISO = "NAD"
        currNAD.currencyName = "Namibean Dollar"
        currNAD.uniCodeHex = "\u{24}"
        currNAD.versionRef = 1
        currNAD.priorityRating = 2
        
        let currNPR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currNPR.codeISO = "NPR"
        currNPR.currencyName = "Nepalese Rupee"
        currNPR.uniCodeHex = "\u{20a8}"
        currNPR.versionRef = 1
        currNPR.priorityRating = 2
        
        let currNZD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currNZD.codeISO = "NZD"
        currNZD.currencyName = "New Zealand Dollar"
        currNZD.uniCodeHex = "\u{24}"
        currNZD.versionRef = 1
        currNZD.priorityRating = 2
        
        let currNOK = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currNOK.codeISO = "NOK"
        currNOK.currencyName = "Norwegian Krone"
        currNOK.uniCodeHex = "\u{6b}\u{72}"
        currNOK.versionRef = 1
        currNOK.priorityRating = 2
        
        let currOMR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currOMR.codeISO = "OMR"
        currOMR.currencyName = "Omani Rial"
        currOMR.uniCodeHex = "\u{fdfc}"
        currOMR.versionRef = 1
        currOMR.priorityRating = 2
        
        let currPKR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currPKR.codeISO = "PKR"
        currPKR.currencyName = "Pakistani Rupee"
        currPKR.uniCodeHex = "\u{20a8}"
        currPKR.versionRef = 1
        currPKR.priorityRating = 2
        
        let currPAB = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currPAB.codeISO = "PAB"
        currPAB.currencyName = "Panamanian Balboa"
        currPAB.uniCodeHex = "\u{42}\u{2f}\u{2e}"
        currPAB.versionRef = 1
        currPAB.priorityRating = 2
        
        let currPHP = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currPHP.codeISO = "PHP"
        currPHP.currencyName = "Philippine Peso"
        currPHP.uniCodeHex = "\u{50}\u{68}\u{70}"
        currPHP.versionRef = 1
        currPHP.priorityRating = 2
        
        let currPLN = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currPLN.codeISO = "PLN"
        currPLN.currencyName = "Polish Zloty"
        currPLN.uniCodeHex = "\u{7a}\u{142}"
        currPLN.versionRef = 1
        currPLN.priorityRating = 2
        
        let currQAR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currQAR.codeISO = "QAR"
        currQAR.currencyName = "Qatari Riyal"
        currQAR.uniCodeHex = "\u{fdfc}"
        currQAR.versionRef = 1
        currQAR.priorityRating = 2
        
        let currRON = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currRON.codeISO = "RON"
        currRON.currencyName = "Romanian Leu"
        currRON.uniCodeHex = "\u{6c}\u{65}\u{69}"
        currRON.versionRef = 1
        currRON.priorityRating = 2
        
        let currRUB = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currRUB.codeISO = "RUB"
        currRUB.currencyName = "Russian Rouble"
        currRUB.uniCodeHex = "\u{440}\u{443}\u{4}"
        currRUB.versionRef = 1
        currRUB.priorityRating = 2
        
        let currSAR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currSAR.codeISO = "SAR"
        currSAR.currencyName = "Saudi Riyal"
        currSAR.uniCodeHex = "\u{fdfc}"
        currSAR.versionRef = 1
        currSAR.priorityRating = 2
        
        let currSGD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currSGD.codeISO = "SGD"
        currSGD.currencyName = "Singapore Dollar"
        currSGD.uniCodeHex = "\u{24}"
        currSGD.versionRef = 1
        currSGD.priorityRating = 2
        
        let currZAR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currZAR.codeISO = "ZAR"
        currZAR.currencyName = "South African Rand"
        currZAR.uniCodeHex = "\u{f52}"
        currZAR.versionRef = 1
        currZAR.priorityRating = 2
        
        let currKRW = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currKRW.codeISO = "KRW"
        currKRW.currencyName = "South Korean Won"
        currKRW.uniCodeHex = "\u{20a9}"
        currKRW.versionRef = 1
        currKRW.priorityRating = 2
        
        let currLKR = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currLKR.codeISO = "LKR"
        currLKR.currencyName = "Sri Lankan Rupee"
        currLKR.uniCodeHex = "\u{20a8}"
        currLKR.versionRef = 1
        currLKR.priorityRating = 2
        
        let currSEK = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currSEK.codeISO = "SEK"
        currSEK.currencyName = "Swedish Krona"
        currSEK.uniCodeHex = "\u{6b}\u{72}"
        currSEK.versionRef = 1
        currSEK.priorityRating = 2
        
        let currCHF = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currCHF.codeISO = "CHF"
        currCHF.currencyName = "Swiss Franc"
        currCHF.uniCodeHex = "\u{43}\u{48}\u{46}"
        currCHF.versionRef = 1
        currCHF.priorityRating = 1
        
        let currTHB = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currTHB.codeISO = "THB"
        currTHB.currencyName = "Thai Baht"
        currTHB.uniCodeHex = "\u{e3f}"
        currTHB.versionRef = 1
        currTHB.priorityRating = 2
        
        let currTRY = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currTRY.codeISO = "TRY"
        currTRY.currencyName = "Turkish Lira"
        currTRY.uniCodeHex = "\u{59}\u{54}\u{4c}"
        currTRY.versionRef = 1
        currTRY.priorityRating = 2
        
        let currAED = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currAED.codeISO = "AED"
        currAED.currencyName = "United Arab Emirates Dirham"
        currAED.uniCodeHex = "n/a"
        currAED.versionRef = 1
        currAED.priorityRating = 2
        
        let currUSD = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currUSD.codeISO = "USD"
        currUSD.currencyName = "US Dollar"
        currUSD.uniCodeHex = "\u{24}"
        currUSD.versionRef = 1
        currUSD.priorityRating = 1
        
        let currVEF = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currVEF.codeISO = "VEF"
        currVEF.currencyName = "Venezuelan bolivar"
        currVEF.uniCodeHex = "\u{42}\u{73}"
        currVEF.versionRef = 1
        currVEF.priorityRating = 2
        
        let currXOF = NSEntityDescription.insertNewObject(forEntityName: "CurrencyCode", into: managedObjectContext) as! CurrencyCode
        currXOF.codeISO = "XOF"
        currXOF.currencyName = "West African CFA franc"
        currXOF.uniCodeHex = "n/a"
        currXOF.versionRef = 1
        currXOF.priorityRating = 2

        
        do{
            try managedObjectContext.save()
        }catch {
            print("DEBUG ERROR Save")
        }

        

        
    }

}

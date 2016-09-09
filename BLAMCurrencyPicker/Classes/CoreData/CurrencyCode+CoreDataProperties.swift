//
//  CurrencyCode+CoreDataProperties.swift
//  Pods
//
//  Created by Peter Todd Air on 09/09/2016.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension CurrencyCode {

    @NSManaged var codeISO: String?
    @NSManaged var currencyName: String?
    @NSManaged var priorityRating: NSNumber?
    @NSManaged var unicodeDec: String?
    @NSManaged var uniCodeHex: String?
    @NSManaged var versionRef: NSNumber?

}

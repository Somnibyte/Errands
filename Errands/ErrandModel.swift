//
//  ErrandModel.swift
//  Errands
//
//  Created by Guled on 10/28/14.
//  Copyright (c) 2014 Guled. All rights reserved.
//

import Foundation
import CoreData

@objc(ErrandModel)
class ErrandModel: NSManagedObject {

    @NSManaged var item: String
    @NSManaged var info: String
    @NSManaged var quantity: String

}

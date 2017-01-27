//
//  Message+CoreDataProperties.swift
//  FishyTalk
//
//  Created by ED on 1/21/17.
//  Copyright © 2017 SwiftBeard. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Message {

    @NSManaged var text: String?
    @NSManaged var timestamp: NSDate?
    @NSManaged var chat: Chat?
    @NSManaged var sender: Contact?

}

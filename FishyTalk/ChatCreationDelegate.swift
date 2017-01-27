//
//  ChatCreationDelegate.swift
//  FishyTalk
//
//  Created by ED on 1/18/17.
//  Copyright © 2017 SwiftBeard. All rights reserved.
//

import Foundation
import CoreData

protocol ChatCreationDelegate{
    func created(chat chat: Chat, inContext context:NSManagedObjectContext)
}


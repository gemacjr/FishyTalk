//
//  Chat.swift
//  FishyTalk
//
//  Created by ED on 1/15/17.
//  Copyright © 2017 SwiftBeard. All rights reserved.
//

import Foundation
import CoreData

class Chat: NSManagedObject {
    
    var isGroupChat:Bool{
        return participants?.count > 1
    }

    var lastMessage:Message?{
        let request = NSFetchRequest(entityName: "Message")
        request.predicate = NSPredicate(format: "chat = %@", self)
        request.sortDescriptors = [NSSortDescriptor(key: "timestamp", ascending: false)]
        request.fetchLimit = 1
        do{
            guard let results = try self.managedObjectContext?.executeFetchRequest(request) as? [Message] else {return nil}
            return results.first
        }catch{ print("Error for Request")}
        return nil
    }
    
    func add(participant contact:Contact){
        mutableSetValueForKey("participants").addObject(contact)
    }

}

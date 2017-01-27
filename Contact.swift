//
//  Contact.swift
//  FishyTalk
//
//  Created by ED on 1/17/17.
//  Copyright © 2017 SwiftBeard. All rights reserved.
//

import Foundation
import CoreData

class Contact: NSManagedObject {


    var sortLetter: String{
        let letter = lastName?.characters.first ?? firstName?.characters.first
        let s = String(letter!)
        return s
    }
    
    var fullName:String{
        var fullName = ""
        if let firstName = firstName{
            fullName += firstName
        }
        if let lastName = lastName{
            if fullName.characters.count > 0{
                fullName += " "
            }
            fullName += lastName
        }
        return fullName
    }

}

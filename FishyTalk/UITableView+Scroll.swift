//
//  UITableView+Scroll.swift
//  FishyTalk
//
//  Created by ED on 1/15/17.
//  Copyright © 2017 SwiftBeard. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func scrollToBottom() {
        
        if self.numberOfSections > 1{
            let lastSection = self.numberOfSections - 1
            self.scrollToRowAtIndexPath(NSIndexPath(forRow:self.numberOfRowsInSection(lastSection) - 1, inSection: lastSection), atScrollPosition: .Bottom, animated: true)
        } else if self.numberOfSections == 1 && self.numberOfRowsInSection(0) > 0 {
            self.scrollToRowAtIndexPath(NSIndexPath(forRow: self.numberOfRowsInSection(0)-1, inSection: 0), atScrollPosition: .Bottom, animated: true)
        }
        
    }
}
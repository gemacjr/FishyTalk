//
//  UIViewController+FillWithView.swift
//  FishyTalk
//
//  Created by ED on 1/18/17.
//  Copyright © 2017 SwiftBeard. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func fillViewWith(subview: UIView){
        subview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subview)
        
        let viewConstraints:[NSLayoutConstraint] = [
            subview.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor),
            subview.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor),
            subview.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor),
            subview.bottomAnchor.constraintEqualToAnchor(bottomLayoutGuide.topAnchor)
        ]
        NSLayoutConstraint.activateConstraints(viewConstraints)
    }
}

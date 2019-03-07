//
//  UITableView+Extensions.swift
//  amate
//
//  Created by Jonas Mahiques on 2018-09-27.
//  Copyright © 2018 Jonas Mahiques. All rights reserved.
//

import UIKit

public extension UITableView {
    public func performUpdate(_ update: ()->Void, completion: (()->Void)?) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        
        beginUpdates()
        update()
        endUpdates()
        
        CATransaction.commit()
    }
    
    public var selectedCell:UITableViewCell? {
        guard let selectedIndexPath = self.indexPathForSelectedRow else { return nil }
        return self.cellForRow(at: selectedIndexPath)
    }
}

//
//  TableSectionModule.swift
//  chat-ios
//
//  Created by Carlos Jimenez Galindo on 11/11/15.
//  Copyright © 2015 Muba Online. All rights reserved.
//

import UIKit
import Foundation

class TableSectionModule: NSObject {
    var tableView:UITableView!
    var section:NSInteger!
    
    init(tableView:UITableView, section:NSInteger) {
        self.tableView = tableView;
        self.section = section
    }
    
    func heightForHeader() -> CGFloat {
        return 1;
    }
    
    func heightForFooter() -> CGFloat {
        return 15;
    }
    
    func viewForHeader() -> UIView {
        let view:UIView = UIView(frame: CGRectZero)
        view.backgroundColor = UIColor.clearColor()
        return view
    }
    
    func viewForFooter() -> UIView {
        let view:UIView = UIView(frame: CGRectZero)
        view.backgroundColor = UIColor.clearColor()
        return view
    }
    
    func cellForRow(row: NSInteger) -> UITableViewCell {
        NSException(name:NSInternalInconsistencyException, reason:"You must override this method in a subclass", userInfo:nil).raise()
        abort()
    }
    
    func heightForRow(row: NSInteger) -> CGFloat {
        NSException(name:NSInternalInconsistencyException, reason:"You must override this method in a subclass", userInfo:nil).raise()
        abort()
    }
    
    func numberOfRows() -> NSInteger {
        NSException(name:NSInternalInconsistencyException, reason:"You must override this method in a subclass", userInfo:nil).raise()
        abort()
    }
    
    func didSelectRow(row: NSInteger) {
        
    }
    
    func canEditRow(row: NSInteger) -> Bool {
        return false
    }
    
    func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRow row: NSInteger) {
        
    }
}

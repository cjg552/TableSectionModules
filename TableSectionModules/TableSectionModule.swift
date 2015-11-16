//
//  TableSectionModule.swift
//  chat-ios
//
//  Created by Carlos Jimenez Galindo on 11/11/15.
//  Copyright © 2015 Muba Online. All rights reserved.
//

import UIKit
import Foundation

public class TableSectionModule: NSObject {
    public var tableView:UITableView!
    public var section:NSInteger!
    
    public init(tableView:UITableView, section:NSInteger) {
        self.tableView = tableView;
        self.section = section
    }
    
    public func heightForHeader() -> CGFloat {
        return CGFloat.min;
    }
    
    public func heightForFooter() -> CGFloat {
        return CGFloat.min;
    }
    
    public func viewForHeader() -> UIView {
        let view:UIView = UIView(frame: CGRectZero)
        view.backgroundColor = UIColor.clearColor()
        return view
    }
    
    public func viewForFooter() -> UIView {
        let view:UIView = UIView(frame: CGRectZero)
        view.backgroundColor = UIColor.clearColor()
        return view
    }
    
    public func cellForRow(row: NSInteger) -> UITableViewCell {
        NSException(name:NSInternalInconsistencyException, reason:"You must override this method in a subclass", userInfo:nil).raise()
        abort()
    }
    
    public func heightForRow(row: NSInteger) -> CGFloat {
        NSException(name:NSInternalInconsistencyException, reason:"You must override this method in a subclass", userInfo:nil).raise()
        abort()
    }
    
    public func numberOfRows() -> NSInteger {
        NSException(name:NSInternalInconsistencyException, reason:"You must override this method in a subclass", userInfo:nil).raise()
        abort()
    }
    
    public func didSelectRow(row: NSInteger) {
        
    }
    
    public func canEditRow(row: NSInteger) -> Bool {
        return false
    }
    
    public func commitEditingStyle(editingStyle: UITableViewCellEditingStyle, forRow row: NSInteger) {
        
    }
}

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
    weak public var sectionSource: TableSectionModuleSectionSource?
    private(set) public var tableView:UITableView!
    private(set) public var section:NSInteger{
        get {
            return (self.sectionSource?.sectionForModule(self))!
        }
        set { self.section = newValue }
    }
    
    public init(tableView:UITableView) {
        super.init()
        self.tableView = tableView
        
        self.registerViews()
    }
    
    public func heightForHeader() -> CGFloat {
        return CGFloat.min;
    }
    
    public func heightForFooter() -> CGFloat {
        return CGFloat.min;
    }
    
    public func registerViews() {
        self.autoRegisterViews()
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

// MARK: - Autoregistration of Cells, Header and Footer methods
extension TableSectionModule {
    private func autoRegisterViews() {
        self.autoRegisterClassForCells()
        self.autoRegisterClassForHeadersFooters()
        self.autoRegisterNibsForCells()
        self.autoRegisterNibsForHeadersFooters()
    }
    
    //Autoregistrion - Override those methods if the ReuseIdentifier is exactly the same that the Class and the Nib file (if exits)
    public func registerClassForCells() -> [AnyClass] {
        return []
    }
    
    public func registerClassForHeadersFooters() -> [AnyClass] {
        return []
    }
    
    public func registerNibsForCells() -> [AnyClass] {
        return []
    }
    
    public func registerNibsForHeadersFooters() -> [AnyClass] {
        return []
    }
    
    private func autoRegisterClassForCells() {
        for currentClass in self.registerClassForCells() {
            let identifier = String(currentClass)
            self.tableView.registerClass(currentClass, forCellReuseIdentifier: identifier)
        }
    }
    
    private func autoRegisterClassForHeadersFooters() {
        for currentClass in self.registerClassForHeadersFooters() {
            let identifier = String(currentClass)
            self.tableView.registerClass(currentClass, forHeaderFooterViewReuseIdentifier: identifier)
        }
    }
    
    private func autoRegisterNibsForCells() {
        for currentClass in self.registerNibsForCells() {
            let identifier = String(currentClass)
            let nib = UINib.init(nibName: identifier, bundle: nil)
            self.tableView.registerNib(nib, forCellReuseIdentifier: identifier)
        }
    }
    
    private func autoRegisterNibsForHeadersFooters() {
        for currentClass in self.registerNibsForHeadersFooters() {
            let identifier = String(currentClass)
            let nib = UINib.init(nibName: identifier, bundle: nil)
            self.tableView.registerNib(nib, forHeaderFooterViewReuseIdentifier: identifier)
        }
    }
}

// MARK: - Private Protocol for auto control of the section
public protocol TableSectionModuleSectionSource : NSObjectProtocol {
    func sectionForModule(module: TableSectionModule) -> NSInteger
}

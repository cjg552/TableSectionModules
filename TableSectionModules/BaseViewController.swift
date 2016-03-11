//
//  BaseViewController.swift
//  chat-ios
//
//  Created by Carlos Jimenez Galindo on 11/11/15.
//  Copyright © 2015 Muba Online. All rights reserved.
//

import UIKit
import Foundation

public class BaseViewController: UIViewController {
    
    @IBOutlet public var baseTableView:UITableView?
    private(set) public var tableSectionModules:[TableSectionModule] = []
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableSectionModules()
    }
    
    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func configureTableSectionModules() {
        self.tableSectionModules = []
    }
    
}

extension BaseViewController: TableSectionModuleSectionSource {
    public func appendModule(module: TableSectionModule) {
        module.sectionSource = self;
        self.tableSectionModules.append(module)
    }
    
    public func insertModule(module: TableSectionModule, atIndex: Int) {
        module.sectionSource = self;
        self.tableSectionModules.insert(module, atIndex: atIndex)
    }
    
    public func removeAllModules() {
        self.tableSectionModules.removeAll()
    }
    
    public func removeModuleAtIndex(atIndex: Int) {
        self.tableSectionModules.removeAtIndex(atIndex)
    }
    
    public func removeFirstModule() {
        self.tableSectionModules.removeFirst()
    }
    
    public func removeLastModule() {
        self.tableSectionModules.removeLast()
    }
    
    public func replaceModuleAtSection(section: NSInteger, withModule module: TableSectionModule) {
        module.sectionSource = self
        self.tableSectionModules[section] = module
    }
    
    public func sectionForModule(module: TableSectionModule) -> NSInteger {
        return (self.tableSectionModules.indexOf(module))!
    }
}

extension BaseViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return self.tableSectionModules[section].heightForFooter()
    }
    
    public func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return self.tableSectionModules[section].viewForFooter()
    }
    
    public func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.tableSectionModules[section].heightForHeader()
    }
    
    public func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return self.tableSectionModules[section].viewForHeader()
    }
    
    public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.tableSectionModules.count
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableSectionModules[section].numberOfRows()
    }
    
    public func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.tableSectionModules[indexPath.section].heightForRow(indexPath.row)
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return self.tableSectionModules[indexPath.section].cellForRow(indexPath.row)
    }
    
    public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.tableSectionModules[indexPath.section].didSelectRow(indexPath.row)
    }
    
    public func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return self.tableSectionModules[indexPath.section].canEditRow(indexPath.row)
    }
    
    public func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        self.tableSectionModules[indexPath.section].commitEditingStyle(editingStyle, forRow: indexPath.row)
    }
    
}

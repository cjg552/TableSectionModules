//
//  BaseViewController.swift
//  chat-ios
//
//  Created by Carlos Jimenez Galindo on 11/11/15.
//  Copyright © 2015 Muba Online. All rights reserved.
//

import UIKit
import Foundation

class BaseViewController: UIViewController {
    
    @IBOutlet var baseTableView:UITableView?
    var tableSectionModules:[TableSectionModule]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableSectionModules()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func configureTableSectionModules() {
        
    }
    
}

extension BaseViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return self.tableSectionModules![section].heightForFooter()
    }
    
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return self.tableSectionModules![section].viewForFooter()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.tableSectionModules!.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableSectionModules![section].numberOfRows()
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.tableSectionModules![indexPath.section].heightForRow(indexPath.row)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return self.tableSectionModules![indexPath.section].cellForRow(indexPath.row)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.tableSectionModules![indexPath.section].didSelectRow(indexPath.row)
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return self.tableSectionModules![indexPath.section].canEditRow(indexPath.row)
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        self.tableSectionModules![indexPath.section].commitEditingStyle(editingStyle, forRow: indexPath.row)
    }
}


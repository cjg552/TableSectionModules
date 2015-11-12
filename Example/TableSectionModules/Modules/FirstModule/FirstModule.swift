//
//  FirstModule.swift
//  TableSectionModules
//
//  Created by Carlos Jimenez Galindo on 12/11/15.
//  Copyright © 2015 CocoaPods. All rights reserved.
//

import UIKit

class FirstModule: TableSectionModule {
    
    override func numberOfRows() -> NSInteger {
        return 5
    }
    
    override func heightForRow(row: NSInteger) -> CGFloat {
        return 70.0
    }
    
    override func cellForRow(row: NSInteger) -> UITableViewCell {
        let cell:FirstExampleCell = self.createFirstExampleCell()
        return cell
    }
    
    func createFirstExampleCell(row: NSInteger) -> ExampleCell {
        var exampleCell: FirstExampleCell? = self.tableView.dequeueReusableCellWithIdentifier(FirstExampleCell.reuseIdentifier()) as? FirstExampleCell
        if exampleCell == nil {
            exampleCell = FirstExampleCell.cellFromNib() as? FirstExampleCell
        }
        
        exampleCell?.nameLabel.text = String(format: "Example title cell %i", arguments: row)
        if row % 2 == 0 {
            exampleCell?.imageAvatar.image = UIImage(named: "icon1")
        }
        else {
            exampleCell?.imageAvatar.image = UIImage(named: "icon2")
        }
        
        return exampleCell!
    }

}

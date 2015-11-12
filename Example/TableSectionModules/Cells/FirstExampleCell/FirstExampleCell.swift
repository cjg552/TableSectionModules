//
//  FirstExampleCell.swift
//  TableSectionModules
//
//  Created by Carlos Jimenez Galindo on 12/11/15.
//  Copyright © 2015 CocoaPods. All rights reserved.
//

import UIKit

class FirstExampleCell: ModuleCell {
    
    @IBOutlet var imageAvatar:UIImageView!
    @IBOutlet var nameLabel:UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

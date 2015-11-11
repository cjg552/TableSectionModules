//
//  ModuleCell.swift
//  chat-ios
//
//  Created by Carlos Jimenez Galindo on 11/11/15.
//  Copyright © 2015 Muba Online. All rights reserved.
//

import UIKit

class ModuleCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func reuseIdentifier() -> String {
        return self.nameOfClass
    }
    
    class func cellFromNib() -> AnyObject {
        let nib = NSBundle.mainBundle().loadNibNamed(self.nameOfClass, owner: self, options: nil)
        return nib.first!
    }
}

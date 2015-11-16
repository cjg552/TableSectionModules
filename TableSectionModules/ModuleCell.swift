//
//  ModuleCell.swift
//  chat-ios
//
//  Created by Carlos Jimenez Galindo on 11/11/15.
//  Copyright © 2015 Muba Online. All rights reserved.
//

import UIKit

public class ModuleCell: UITableViewCell {

    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public class func reuseIdentifier() -> String {
        return self.nameOfClass
    }
    
    public class func cellFromNib() -> AnyObject {
        let nib = NSBundle.mainBundle().loadNibNamed(self.nameOfClass, owner: self, options: nil)
        return nib.first!
    }
}

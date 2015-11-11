//
//  NSObject.swift
//  chat-ios
//
//  Created by Carlos Jimenez Galindo on 11/11/15.
//  Copyright © 2015 Muba Online. All rights reserved.
//

import UIKit

public extension NSObject {
    public class var nameOfClass: String{
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
}

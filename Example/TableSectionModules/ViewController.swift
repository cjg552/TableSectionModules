//
//  ViewController.swift
//  TableSectionModules
//
//  Created by Carlos Jimenez Galindo on 11/11/2015.
//  Copyright (c) 2015 Carlos Jimenez Galindo. All rights reserved.
//

import UIKit
import TableSectionModules

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func configureTableSectionModules {
        self.tableSectionModules = []
        let firstModule: FirstModule = FirstModule(self.baseTableView,self.tableSectionModules.count)
        
    }

}


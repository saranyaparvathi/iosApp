//
//  SecondView.swift
//  SampleApp
//
//  Created by PDAUSER on 01/04/17.
//  Copyright © 2017 org. All rights reserved.
//

import Foundation

import UIKit



class SecondView : UIViewController{
    @IBOutlet weak var labelText: UILabel!
    var dataPassed : String!
    override func viewDidLoad() {
        labelText.text=dataPassed
    }
    
}
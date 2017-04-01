//
//  ViewController.swift
//  SampleApp
//
//  Created by PDAUSER on 01/04/17.
//  Copyright © 2017 org. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var textName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func callAnotherView(sender: UIButton) {
        if(!(textName.text?.isEmpty)!)
        {
        performSegueWithIdentifier("actionSegue", sender: textName.text)
        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        if(segue.identifier=="actionSegue")
        {
            let secondVC = segue.destinationViewController as! SecondView
            let data=sender as! String
            secondVC.dataPassed = data
            
        }
    }
}


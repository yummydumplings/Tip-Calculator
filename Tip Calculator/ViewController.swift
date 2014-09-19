//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Morgan Lai on 9/18/14.
//  Copyright (c) 2014 Morgan Lai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var TipNameOne: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear")
        var defaults = NSUserDefaults.standardUserDefaults()
        
        var TipOne = defaults.integerForKey("TipOne")
        var TipTwo = defaults.integerForKey("TipTwo")
        var TipThree = defaults.integerForKey("TipThree")
        
        
        
        tipControl.setTitle(String(TipOne)+"%", forSegmentAtIndex: 0)
        tipControl.setTitle(String(TipTwo)+"%", forSegmentAtIndex: 1)
        tipControl.setTitle(String(TipThree)+"%", forSegmentAtIndex: 2)
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("view did disappear")
    }

    @IBAction func onEditingChange(sender: AnyObject) {
        
        
        
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var TipOne = defaults.integerForKey("TipOne")
        var TipTwo = defaults.integerForKey("TipTwo")
        var TipThree = defaults.integerForKey("TipThree")
        
        println(TipOne)
        
        tipControl.setTitle(String(TipOne)+"%", forSegmentAtIndex: 0)
        tipControl.setTitle(String(TipTwo)+"%", forSegmentAtIndex: 1)
        tipControl.setTitle(String(TipThree)+"%", forSegmentAtIndex: 2)
        
        
        
        var tipPercentages = [Double(TipOne)*0.01 , Double(TipTwo)*0.01, Double(TipThree)*0.01]
        
        
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        
        
        var billAmount = NSString(string: billField.text).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
        
        
    }
}


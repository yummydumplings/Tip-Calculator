//
//  UserViewController.swift
//  Tip Calculator
//
//  Created by Morgan Lai on 9/18/14.
//  Copyright (c) 2014 Morgan Lai. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    

    @IBOutlet weak var SetTipOneLabel: UILabel!

    @IBOutlet weak var SetTipTwoLabel: UILabel!
    
    @IBOutlet weak var SetTipThreeLabel: UILabel!
    
    @IBOutlet weak var SetTipOneSlider: UISlider!
    
    @IBOutlet weak var SetTipTwoSlider: UISlider!
    
    @IBOutlet weak var SetTipThreeSlider: UISlider!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        println("view will appear Second")
        
        
        var defaults = NSUserDefaults.standardUserDefaults()
        
        var TipOnetest = defaults.integerForKey("TipOne")
        var TipTwotest = defaults.integerForKey("TipTwo")
        var TipThreetest = defaults.integerForKey("TipThree")
        
        SetTipOneLabel.text = String(TipOnetest)+"%"
        SetTipTwoLabel.text = String(TipTwotest)+"%"
        SetTipThreeLabel.text = String(TipThreetest)+"%"
        
        defaults.synchronize()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("view did appear Second")


        
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        println("view will disappear second")
        
        
        
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        println("view did disappear Second")
        
    }

    @IBAction func TipOneChangeSlider(sender: AnyObject) {
        
        var TipOne = Int(SetTipOneSlider.value)
        
        SetTipOneLabel.text = String(TipOne)+"%"
        
    }
    
    @IBAction func TipTwoChangeSlider(sender: AnyObject) {
        
        var TipTwo = Int(SetTipTwoSlider.value)
        
        SetTipTwoLabel.text = String(TipTwo)+"%"
    }
    
    @IBAction func TipThreeChangeSlider(sender: AnyObject) {
        var TipThree = Int(SetTipThreeSlider.value)
        
        SetTipThreeLabel.text = String(TipThree)+"%"
    }
    
    
    
    @IBAction func TipOneSetting(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        
        var TipOne = Int(SetTipOneSlider.value)
        
        defaults.setInteger(TipOne,forKey:"TipOne")
        defaults.synchronize()
        
    }

    @IBAction func TipTwoSetting(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        
        var TipTwo = Int(SetTipTwoSlider.value)
        
        defaults.setInteger(TipTwo,forKey:"TipTwo")
        defaults.synchronize()
    }

    @IBAction func TipThreeSetting(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        
        var TipThree = Int(SetTipThreeSlider.value)
        
        defaults.setInteger(TipThree,forKey:"TipThree")
        defaults.synchronize()
        
        println("this is tip three")
        println(String(TipThree))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

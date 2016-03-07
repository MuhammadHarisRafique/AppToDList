//
//  AddTaskViewController.swift
//  TodoList
//
//  Created by Mac on 3/7/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var addTaskTxtbox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let a: ViewController = segue.destinationViewController as! ViewController
//        if segue.identifier == "segue"
////        {
//            let  a: ViewController = (segue.destinationViewController as? ViewController!)!
//        
        
        
        
            a.dataFromNewView = addTaskTxtbox.text!
        
        
    }
    //
    @IBAction func btnBackAction(sender: AnyObject)
    {
        performSegueWithIdentifier("segue", sender: self )
    }
    //        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    //        {
    //            let a: ViewController = segue.destinationViewController as! ViewController
    //            a.dataFromNewView = addTaskTxtbox.text!
    //            print(a.dataFromNewView)
    //            }
    //            
    
    
}




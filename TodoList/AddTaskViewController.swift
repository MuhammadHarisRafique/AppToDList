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
    var nam = ""
    var indexView2 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(animated: Bool) {
        
        self.addTaskTxtbox.text = nam
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let a: ViewController = segue.destinationViewController as! ViewController
        if addTaskTxtbox.text != "" {
        a.dataFromNewView = addTaskTxtbox.text!
        a.Array[indexView2] = nam
        }
    }
    @IBAction func btnBackAction(sender: AnyObject)
    {
        
        
    }
    @IBAction func btnUpdateView2(sender: AnyObject)
    
    {
        if addTaskTxtbox.text != ""
        {
            
            nam = addTaskTxtbox.text!
            
        }
    }
    
   
    }
    





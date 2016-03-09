//
//  AddTaskViewController.swift
//  TodoList
//
//  Created by Mac on 3/7/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    
    @IBOutlet weak var btnUpdateOfView2: UIButton!
    @IBOutlet weak var saveButtonOutlet: UIButton!
    @IBOutlet weak var addTaskTxtbox: UITextField!
    var condition: Bool?
    var conditionForUpdateButton: Bool?
    var nam = ""
    var indexView2 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(animated: Bool) {
        
        self.addTaskTxtbox.text = nam
       if nam == ""{
        self.btnUpdateOfView2.enabled = conditionForUpdateButton!
        }
       
        if nam != ""{
        self.saveButtonOutlet.enabled = condition!
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let a: ViewController = segue.destinationViewController as! ViewController
        if segue.identifier == "view2savesegue"{
        if addTaskTxtbox.text != "" && addTaskTxtbox.text != nil{
           
        a.dataFromNewView = addTaskTxtbox.text!
            }
        }
         else if segue.identifier == "updateview2segue"
        
        {
       
            a.Array[indexView2] = nam
        }
        
        if segue.identifier == "backSegueidetifier"{
           a.dataFromNewView =  addTaskTxtbox.text
            a.dataFromNewView = ""
        }
        
    }
    @IBAction func btnBackAction(sender: AnyObject)
    {
//       addTaskTxtbox.text = ""
        
    }
    @IBAction func btnUpdateView2(sender: AnyObject)
    
    {
        if addTaskTxtbox.text != ""
        {
            
            nam = addTaskTxtbox.text!
            
        }
    }
    
   
    }
    





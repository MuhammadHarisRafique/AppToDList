

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var index: Int!
    var dataFromNewView: String?
    var Array = ["mango", "Orange", "Grapes", "Apple", "Banana", "Stawberrry"]

    
    @IBOutlet weak var btndelOutlet: UIButton!
    @IBOutlet weak var btnupdate: UIButton!
    @IBOutlet weak var tableTaskList: UITableView!
    @IBOutlet weak var textboxTask: UITextField!
    @IBOutlet weak var btnAdd: UIButton!
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let count = touches.count
        index = 0
        if count > 0
        {
           // var a = true
            self.btnupdate.alpha = 0.2
            self.btndelOutlet.alpha = 0.2
            if index == 0 || index > 0
            {
                
               
                tableTaskList.reloadData()
            }
        }

    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        tableTaskList.dataSource = self
        tableTaskList.delegate = self
        self.btndelOutlet.enabled = false
        self.btndelOutlet.alpha = 0.2
        self.btnupdate.enabled = false
        self.btnupdate.alpha = 0.2
            }
    
    override func viewDidAppear(animated: Bool) {
        if dataFromNewView != "" && dataFromNewView != nil{
         Array.append(dataFromNewView!)
        tableTaskList.reloadData()
        }
        else if dataFromNewView == ""
        {
            tableTaskList.reloadData()
        
        }
        
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        let b: AddTaskViewController = segue.destinationViewController as! AddTaskViewController
        if segue.identifier == "btnaddseque"
    {
   b.conditionForUpdateButton = false
        
    }
        else if (segue.identifier == "view1updatesegue")
        {
        
        if index != nil && Array.count != 0 {
       b.nam =  Array[index]
       b.indexView2 = index
       b.condition = false
        }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = Array[indexPath.row]
        return cell
        
    }
    func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
       return indexPath.row % 4
    }

    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    index = indexPath.row
    self.btndelOutlet.enabled = true
    self.btnupdate.enabled = true
    self.btndelOutlet.alpha = 10
    self.btnupdate.alpha = 10
  
    
       }
    
    

    @IBAction func btnDelete(sender: AnyObject)
    {
        if index != nil
        {
        Array.removeAtIndex(index!)
        tableTaskList.reloadData()
        index = nil
       self.btnupdate.enabled = false
        }
        
    }
    

   @IBAction func addbutton(sender: AnyObject)
    {
        
        
      // if textboxTask.text != ""{
       // Array.append(textboxTask.text!)
        //tableTaskList.reloadData()
        //textboxTask.text = ""
        
    
    }
    
    @IBAction func updateButtonAction(sender: AnyObject) {
 
//        if textboxTask.text != ""
//        {
//            Array[index!] = textboxTask.text!
//            tableTaskList.reloadData()
//            textboxTask.text = ""
//        }
    }
}


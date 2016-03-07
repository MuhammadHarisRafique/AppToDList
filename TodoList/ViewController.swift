

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var index: Int?
    var dataFromNewView: String?
    var Array = ["abc" , "xyz" , "pqr"]
    
    @IBOutlet weak var btndelOutlet: UIButton!
    @IBOutlet weak var btnupdate: UIButton!
    @IBOutlet weak var tableTaskList: UITableView!
    @IBOutlet weak var textboxTask: UITextField!
       override func viewDidLoad() {
        super.viewDidLoad()
        tableTaskList.dataSource = self
        tableTaskList.delegate = self
        textboxTask.layer.borderWidth = 1
        textboxTask.layer.borderColor = UIColor.blackColor().CGColor
            }
    override func viewDidAppear(animated: Bool) {
        if dataFromNewView != nil{
        Array.append(dataFromNewView!)
        tableTaskList.reloadData()
        
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
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    index = indexPath.row
    textboxTask.text = Array[index!]
    }
    
    

    @IBAction func btnDelete(sender: AnyObject)
    {
        if index != nil
        {
            Array.removeAtIndex(index!)
            tableTaskList.reloadData()
            textboxTask.text = ""
        }
        
    }
    @IBOutlet weak var btnAdd: UIButton!

   @IBAction func addbutton(sender: AnyObject)
    {
      // if textboxTask.text != ""{
       // Array.append(textboxTask.text!)
        //tableTaskList.reloadData()
        //textboxTask.text = ""
        
    
    }
    @IBAction func updateButtonAction(sender: AnyObject) {
        if textboxTask.text != ""
        {
            Array[index!] = textboxTask.text!
            tableTaskList.reloadData()
            textboxTask.text = ""
        }
    }
}


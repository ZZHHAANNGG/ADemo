//
//  TableViewController.swift
//  SimpleDemo
//
//  Created by 王毅 on 15/4/23.
//  Copyright (c) 2015年 Ted Hoyee. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UIPopoverControllerDelegate {
    var listVideos : NSMutableArray!
    
    @IBAction func menuAction()
    {
        var  popover = UIPopoverController(contentViewController: self)
        popover.delegate = self
        //popover.backgroundColor = UIColor (blackColor] colorWithAlphaComponent:0.4];
       // popover.popoverContentSize = CGSizeMake(fittingSize.width, fittingSize.height+10);
        //CGRect:aRect
        //popover.presentPopoverFromRect(aRect, inView: aView, permittedArrowDirections: UIPopoverArrowDirection, animated: YES)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var bundle = NSBundle.mainBundle()
        let plistPath : String! = bundle.pathForResource("TestData", ofType: "plist")
        listVideos = NSMutableArray(contentsOfFile: plistPath)
        

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return  listVideos.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier : String = "PersonallItem"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as? TableViewCell
        

        var row = indexPath.row
        var rowDict: AnyObject = listVideos.objectAtIndex(row)
        let url : String = rowDict.objectForKey("IPhoto") as! String
        //let dataImg : NSData = NSData(contentsOfURL: NSURL(string : url)!)!
        
        // cell!.IPhoto.image = UIImage(data: dataImg)
        cell!.IPhoto.image = UIImage(named: url)
        cell!.IName.text = rowDict.objectForKey("IName") as? String
        cell!.ITime.text = rowDict.objectForKey("ITime") as? String
        cell!.ISubTitle.text = rowDict.objectForKey("ISubTitle") as? String
        cell!.Advices.text = rowDict.objectForKey("Advices") as? String
        return cell!
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}

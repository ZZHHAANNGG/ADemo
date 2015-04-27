//
//  SecondViewController.swift
//  SimpleOne
//
//  Created by Ted Hoyee on 4/23/15.
//  Copyright (c) 2015 Ted Hoyee. All rights reserved.
//

import UIKit

class HomeVC: UITableViewController {
    var listVideos : NSMutableArray!
    let cellIdentifier : String = "PersonallItem"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "navTitleOnMain")
        self.navigationItem.titleView = UIImageView(image: image)
        
        let barHomeButton = UIBarButtonItem(image: UIImage(named: "titleEN"), style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.rightBarButtonItems = [barHomeButton]
        
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
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 165.0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:TableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as? TableViewCell
        
        if cell == nil {
            cell = TableViewCell()
        }
        
        var row = indexPath.row
        var rowDict: AnyObject = listVideos.objectAtIndex(row)
        let url : NSString = rowDict.objectForKey("IPhoto") as NSString
        
        if let image = UIImage(named:url) {
            cell!.IPhoto.image = image
        }
        
        cell!.IName.text = rowDict.objectForKey("IName") as? String
        cell!.job.text = rowDict.objectForKey("Job") as? String
        cell!.ITime.text = rowDict.objectForKey("ITime") as? String
        cell!.ISubTitle.text = rowDict.objectForKey("ISubTitle") as? String
        cell!.Advices.text = rowDict.objectForKey("Advices") as? String
        return cell!
    }
    
}


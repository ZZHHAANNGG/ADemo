//
//  TableViewCell.swift
//  SimpleDemo
//
//  Created by 王毅 on 15/4/23.
//  Copyright (c) 2015年 Ted Hoyee. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var IPhoto: UIImageView!
    @IBOutlet weak var IName: UILabel!
    @IBOutlet weak var ITime: UILabel!
    @IBOutlet weak var ISubTitle: UILabel!
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var Advices: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

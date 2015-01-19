//
//  Listrestaurant_TableViewCell.swift
//  fooddelivery
//
//  Created by I Gusti Ngurah Aditya Dharma on 1/16/15.
//  Copyright (c) 2015 I Gusti Ngurah Aditya Dharma. All rights reserved.
//

import UIKit

class Listrestaurant_TableViewCell: UITableViewCell {
    
    
    var titleRest = UILabel()
    var desc = UILabel()
    var logoRest = UIImageView()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.logoRest.frame = CGRect(x: self.contentView.frame.width - 90  , y: 10, width: 80, height: 40)
        self.logoRest.contentMode = UIViewContentMode.ScaleAspectFit
        self.logoRest.autoresizingMask = UIViewAutoresizing.FlexibleWidth | .FlexibleLeftMargin
        self.logoRest.layer.borderWidth = 1
        self.logoRest.layer.borderColor = UIColor.grayColor().CGColor
        self.titleRest.frame = CGRect(x: 10, y: 10, width: self.contentView.frame.width - 120, height: 20)
        self.titleRest.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleRightMargin
        
        self.desc.frame = CGRect(x: 10, y: 25, width: self.contentView.frame.width - 120, height: 20)
        self.desc.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleRightMargin
        self.desc.font = UIFont.systemFontOfSize(12)
        println(self.frame.width)
        
        self.contentView.addSubview(logoRest)
        self.contentView.addSubview(desc)
        self.contentView.addSubview(titleRest)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

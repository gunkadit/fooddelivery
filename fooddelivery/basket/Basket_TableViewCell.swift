//
//  Basket_TableViewCell.swift
//  fooddelivery
//
//  Created by I Gusti Ngurah Aditya Dharma on 1/16/15.
//  Copyright (c) 2015 I Gusti Ngurah Aditya Dharma. All rights reserved.
//

import UIKit

class Basket_TableViewCell: UITableViewCell {
    
    var centerLabel = UILabel()
    var leftLabel = UILabel()
    var rightLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
        
        self.contentView.addSubview(centerLabel)
        self.contentView.addSubview(leftLabel)
        self.contentView.addSubview(rightLabel)
        
        
        
    }
    
    func hideall()
    {
        self.centerLabel.hidden = true
        self.leftLabel.hidden = true
        self.rightLabel.hidden = true
    }
    
    func content(#rowno: Int, sectionno: Int, rowdata: RowData)
    {
        self.hideall()
        self.centerLabel.frame = CGRect(x: 0, y: 0, width: self.contentView.frame.width, height: 44)
        self.centerLabel.textAlignment = NSTextAlignment.Center
        switch sectionno {
        case 0 :
            if rowdata.title == "Add Item"
            {
                self.centerLabel.textColor = UIColor.orangeColor()
                self.centerLabel.hidden = false
                self.centerLabel.text = rowdata.title
            }
//        case 3 :
//            self.centerLabel.backgroundColor = UIColor(red: 32/255, green: 135/255, blue: 24/255, alpha: 0.7)
//            self.centerLabel.textColor = UIColor.whiteColor()
//            self.centerLabel.hidden = false
//            self.centerLabel.text = rowdata.title
        default :
            self.leftLabel.hidden = false
            self.leftLabel.frame = CGRect(x: 16, y: 0, width: 100, height: rowdata.rowHeight)
            self.leftLabel.font = UIFont.systemFontOfSize(13)
            self.leftLabel.text = rowdata.title
            
            self.rightLabel.hidden = false
            self.rightLabel.frame = CGRect(x: self.contentView.frame.width - 194, y: 0, width: 178, height: rowdata.rowHeight)
            self.rightLabel.textAlignment = .Right
            self.rightLabel.font = UIFont.systemFontOfSize(13)
            self.rightLabel.text = rowdata.valdata
        }
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  sectionRows.swift
//  workorder
//
//  Created by I Gusti Ngurah Aditya Dharma on 11/24/14.
//  Copyright (c) 2014 putu dondo hariwibowo. All rights reserved.
//

import Foundation
import UIKit


class RowData {
    
    var title : String!
    
    var segue : String!
    var vallabel : String!
    var valdata : String!
    var rowvisible : Bool = true
    var rowHeight: CGFloat = 45.0
    var element: UIView? = nil
    
    
    init(title:String,segue:String,vallabel:String,valdata:String, rowvisible:Bool = true, rowHeight:CGFloat = 45.0, element:UIView? = nil)
    {
        self.title = title
        self.segue = segue
        self.vallabel = vallabel
        self.valdata = valdata
        self.rowvisible = rowvisible
        self.rowHeight = rowHeight
        self.element = element
    }
    
    init()
    {
        
    }
}

class sectionRows {
    
    
    var numberOfrows : Int = 0
    var headertitle : String!
    var footertitle: String!
    var heightCell: CGFloat!
    var rowdata = [RowData]()
    var detaildata = [sectionRows]()
    var element: UIView? = nil
    
    
    
    init(numberOfrows:Int = 0,headertitle:String, footertitle:String!,heightCell:CGFloat = 45, rowdata:[RowData], detaildata:[sectionRows] = [], element: UIView! = nil)
        
    {
        self.numberOfrows = numberOfrows
        self.rowdata = rowdata
        self.headertitle = headertitle
        self.footertitle = footertitle
        self.heightCell = heightCell
        self.detaildata = detaildata
        self.element = element
        
    }
    
    init()
    {
        
    }
    
}
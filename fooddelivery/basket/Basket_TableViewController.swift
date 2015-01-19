//
//  Basket_TableViewController.swift
//  fooddelivery
//
//  Created by I Gusti Ngurah Aditya Dharma on 1/16/15.
//  Copyright (c) 2015 I Gusti Ngurah Aditya Dharma. All rights reserved.
//

import UIKit

class Basket_TableViewController: UITableViewController {

    
    var sectionVal = [sectionRows]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.datatable()
        
        self.tableView.tableHeaderView = self.elementTopHeader()
        self.tableView.tableFooterView = self.elementFooterTable()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func datatable()
    {
        self.sectionVal.append(sectionRows(numberOfrows: 1, headertitle: "", footertitle: "", heightCell: 0.01, rowdata: [
                RowData(title: "Add Item", segue: "", vallabel: "", valdata: "", rowvisible: true, rowHeight: 44, element: nil)
            ], detaildata: [], element: nil ))
        self.sectionVal.append(sectionRows(numberOfrows: 1, headertitle: "", footertitle: "", heightCell: 30, rowdata: [
                RowData(title: "Now", segue: "", vallabel: "", valdata: "in 50 min", rowvisible: true, rowHeight: 35, element: nil)
            ], detaildata: [], element: self.headerView(title: "Deliver / PickUp Time")))
        self.sectionVal.append(sectionRows(numberOfrows: 4, headertitle: "", footertitle: "", heightCell: 30, rowdata: [
                RowData(title: "Subtotal", segue: "", vallabel: "", valdata: "Rp 0", rowvisible: true, rowHeight: 35, element: nil),
                RowData(title: "Vat (10.00%)", segue: "", vallabel: "", valdata: "Rp 0", rowvisible: true, rowHeight: 35, element: nil),
                RowData(title: "Delivery Fee", segue: "", vallabel: "", valdata: "Rp 10.000", rowvisible: true, rowHeight: 35, element: nil),
                RowData(title: "Total", segue: "", vallabel: "", valdata: "Rp 0", rowvisible: true, rowHeight: 35, element: nil)
            ], detaildata: [], element: self.headerView(title: "Price")))
//        self.sectionVal.append(sectionRows(numberOfrows: 1, headertitle: "", footertitle: nil, heightCell: 20, rowdata: [
//                RowData(title: "Proceed to Checkout", segue: "", vallabel: "", valdata: "", rowvisible: true, rowHeight: 44, element: nil)
//            ], detaildata: []))
    }
    
    func elementTopHeader() -> UIView {
        var element = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 70))
        element.backgroundColor = UIColor.darkGrayColor()
        
        
        var titleLabel = UILabel(frame: CGRect(x: 10, y: 10, width: self.tableView.frame.width - 120, height: 20))
        var deliverytime = UILabel(frame: CGRect(x: 10, y: 25, width: self.tableView.frame.width - 120, height: 20))
        var logo = UIImageView(frame: CGRect(x: self.tableView.frame.width - 90  , y: 10, width: 80, height: 40))
        
        titleLabel.text = "Burger King"
        titleLabel.font = UIFont.boldSystemFontOfSize(15)
        titleLabel.textColor = UIColor.whiteColor()
        
        deliverytime.text = "60 min delivery time"
        deliverytime.font = UIFont.systemFontOfSize(12)
        deliverytime.textColor = UIColor.whiteColor()
        
        logo.contentMode = UIViewContentMode.ScaleAspectFit
        logo.backgroundColor = UIColor.whiteColor()
        logo.image = UIImage(named: "Burger_King_Logo")
        
        
        element.addSubview(titleLabel)
        element.addSubview(deliverytime)
        element.addSubview(logo)
        return element
    }
    
    func elementFooterTable() -> UIView {
        var element = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 44))
        var proceedButton = UIButton(frame: element.frame)
        proceedButton.setTitle("Proceed to Checkout", forState: UIControlState.Normal)
        proceedButton.backgroundColor = UIColor(red: 32/255, green: 135/255, blue: 24/255, alpha: 0.7)
        proceedButton.addTarget(self, action: "touchDown:", forControlEvents: UIControlEvents.TouchDown)
        proceedButton.addTarget(self, action: "touchUp:", forControlEvents: UIControlEvents.TouchUpInside)
        proceedButton.addTarget(self, action: "touchUp:", forControlEvents: UIControlEvents.TouchUpOutside)
    
        element.addSubview(proceedButton)
        return element
    }
    
    func touchDown(sender: UIButton)
    {
        sender.backgroundColor = UIColor(red: 32/255, green: 135/255, blue: 24/255, alpha: 0.5)
    }
    
    func touchUp(sender: UIButton)
    {
        sender.backgroundColor = UIColor(red: 32/255, green: 135/255, blue: 24/255, alpha: 0.7)
    }
    
    func headerView(#title: String, img: UIImage? = nil) -> UIView {
        var element = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 30))
        
        var titleLabel = UILabel(frame: element.frame)
        titleLabel.text = title
        titleLabel.textAlignment = .Center
        titleLabel.font = UIFont.boldSystemFontOfSize(13)
        element.addSubview(titleLabel)
        return element
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return self.sectionVal.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.sectionVal[section].rowdata.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.sectionVal[indexPath.section].rowdata[indexPath.row].rowHeight
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionVal[section].headertitle
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.sectionVal[section].heightCell
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return self.sectionVal[section].element
    }


    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basketItem", forIndexPath: indexPath) as Basket_TableViewCell

        // Configure the cell...
        cell.content(rowno: indexPath.row, sectionno: indexPath.section, rowdata: self.sectionVal[indexPath.section].rowdata[indexPath.row])
        
        if indexPath.section == 2
        {
            cell.selectionStyle = UITableViewCellSelectionStyle.None
        }
        return cell
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

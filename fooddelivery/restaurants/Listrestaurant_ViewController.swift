//
//  Listrestaurant_ViewController.swift
//  fooddelivery
//
//  Created by I Gusti Ngurah Aditya Dharma on 1/16/15.
//  Copyright (c) 2015 I Gusti Ngurah Aditya Dharma. All rights reserved.
//

import UIKit


class Restaurant {
    var titleRest: String?
    var desc: String?
    var logo: UIImage?
    
    init(titleRest: String, desc: String, logo: UIImage) {
        self.titleRest = titleRest
        self.desc = desc
        self.logo = logo
    }
}

class Listrestaurant_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    @IBAction func backToRoot(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    var restauranlist = [
        Restaurant(titleRest: "Burger King", desc: "Healthy Food", logo: UIImage(named: "Burger_King_Logo")!),
        Restaurant(titleRest: "Es Teler", desc: "Indonesian Food", logo: UIImage(named: "esteler_77_logo")!),
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.separatorInset = UIEdgeInsetsZero
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.restauranlist.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("restaurant", forIndexPath: indexPath) as Listrestaurant_TableViewCell
        
        cell.titleRest.text = self.restauranlist[indexPath.row].titleRest
        cell.desc.text = self.restauranlist[indexPath.row].desc
        cell.logoRest.image = self.restauranlist[indexPath.row].logo
        return cell
    }
    
    
    // MARK: - Set separator inset 0
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if (cell.respondsToSelector("setSeparatorInset:"))
        {
            cell.separatorInset = UIEdgeInsetsZero
        }
        if (cell.respondsToSelector("setLayoutMargins:"))
        {
            cell.layoutMargins = UIEdgeInsetsZero
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if (self.tableView.respondsToSelector("setSeparatorInset:"))
        {
            self.tableView.separatorInset = UIEdgeInsetsZero
        }
        if (self.tableView.respondsToSelector("setLayoutMargins:"))
        {
            self.tableView.layoutMargins = UIEdgeInsetsZero
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

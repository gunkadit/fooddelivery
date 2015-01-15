//
//  Selectlocation_ViewController.swift
//  fooddelivery
//
//  Created by I Gusti Ngurah Aditya Dharma on 1/14/15.
//  Copyright (c) 2015 I Gusti Ngurah Aditya Dharma. All rights reserved.
//

import UIKit

class Selectlocation_ViewController: UIViewController {

    @IBOutlet var selectCity: UIButton!
    @IBOutlet var selectCountry: UIButton!
    @IBOutlet var selectArea: UIButton!
    @IBOutlet var searchLocation: UIButton!
    @IBAction func showRestaurants(sender: AnyObject) {
        self.performSegueWithIdentifier("showRestaurants", sender: self)
    }
    @IBAction func showCity(sender: AnyObject) {
        println("CITY")
        self.performSegueWithIdentifier("showCity", sender: self)
    }
    
    @IBAction func showArea(sender: AnyObject) {
        println("Area")
    }
    @IBAction func showCountry(sender: AnyObject) {
        println("Country")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.searchLocation.layer.borderColor = UIColor.whiteColor().CGColor
        self.searchLocation.layer.borderWidth = 2
        
        self.selectCity.setTitle("Bali", forState: UIControlState.Normal)
        self.selectArea.setTitle("Legian", forState: UIControlState.Normal)
        
        self.selectCity.addTarget(self, action: "touchDown:", forControlEvents: UIControlEvents.TouchDown)
        self.selectCity.addTarget(self, action: "touchUp:", forControlEvents: UIControlEvents.TouchUpInside)
        self.selectCity.addTarget(self, action: "touchUp:", forControlEvents: UIControlEvents.TouchUpOutside)
        
        self.selectArea.addTarget(self, action: "touchDown:", forControlEvents: UIControlEvents.TouchDown)
        self.selectArea.addTarget(self, action: "touchUp:", forControlEvents: UIControlEvents.TouchUpInside)
        self.selectArea.addTarget(self, action: "touchUp:", forControlEvents: UIControlEvents.TouchUpOutside)
        
        
    }
    
    func touchDown(sender: UIButton)
    {
        sender.backgroundColor = UIColor.lightGrayColor()
    }
    
    func touchUp(sender: UIButton)
    {
        sender.backgroundColor = UIColor.whiteColor()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let Device = UIDevice.currentDevice()
        
        let iosVersion = NSString(string: Device.systemVersion).doubleValue
        
        let iOS8 = iosVersion >= 8
        let iOS7 = iosVersion >= 7 && iosVersion < 8 //check version
        if segue.identifier == "showCity"
        {
//            let controller = segue.destinationViewController as Listcity_ViewController
//            let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
//            self.presentViewController(controller, animated: true, completion: { () -> Void in
//                controller.dismissViewControllerAnimated(false, completion: { () -> Void in
//                    appDelegate.window?.rootViewController?.modalPresentationStyle = UIModalPresentationStyle.CurrentContext
//                    self.presentViewController(controller, animated: false, completion: nil)
//                    appDelegate.window?.rootViewController?.modalPresentationStyle = UIModalPresentationStyle.FullScreen
//                    
//                })
//            })
        }
        else if segue.identifier == "showRestaurants" {
         
        }
    }
    
   


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

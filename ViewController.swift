//
//  ViewController.swift
//  HelpMe!
//
//  Created by David Gilman on 5/24/15.
//  Copyright (c) 2015 David Gilman. All rights reserved.
//

import UIKit
import Parse
import ParseUI
import Social

class ViewController: UIViewController, PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        self.loginSetup()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any sources that can be recreated.
    }

    //Parse Login
    
    func logInViewController(logInController: PFLogInViewController, shouldBeginLogInWithUsername username: String, password: String) -> Bool {
        
        
        if (!username.isEmpty || !password.isEmpty) {
            return true
        }else {
            return false
        }
        
    }
    
    func logInViewController(logInController: PFLogInViewController, didLogInUser user: PFUser) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func logInViewController(logInController: PFLogInViewController, didFailToLogInWithError error: NSError?) {
        println("Failed to Login")
    }
    //Parse Sign Up
    func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func signUpViewController(signUpController: PFSignUpViewController, didFailToSignUpWithError error: NSError?) {
        println("Failed to Sign Up")
    }
    
    func signUpViewControllerDidCancelSignUp(signUpController: PFSignUpViewController) {
        println("User dismissed Sign Up")
    }
    
    @IBAction func logoutAction(sender: AnyObject) {
        
        PFUser.logOut()
        
        self.loginSetup()
        
    }
    
    func loginSetup() {
        
        if(PFUser.currentUser() == nil) {
            
            var logInViewController = PFLogInViewController()
            
            logInViewController.delegate = self
            
            var signUpViewController = PFSignUpViewController()
            
            signUpViewController.delegate = self
            
            logInViewController.signUpController = signUpViewController
            
            self.presentViewController(logInViewController, animated: true, completion: nil)
            
        }
        
    }
    @IBAction func shareAction(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
    
            facebookSheet.setInitialText("I'm getting bullied in the Library, HelpMe!")

            self.presentViewController(facebookSheet, animated: true, completion: nil)
        
        } else {
        
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account in settings to share.", preferredStyle: UIAlertControllerStyle.Alert)
        
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        
    }

}
    @IBAction func shareAction2(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            facebookSheet.setInitialText("I'm getting bullied in the Cafeteria, HelpMe!")
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
            
        } else {
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account in settings to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
  
    @IBAction func shareAction5(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            facebookSheet.setInitialText("I'm getting bullied in the Theatre, HelpMe!")
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
            
        } else {
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account in settings to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
    @IBAction func shareAction3(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            facebookSheet.setInitialText("I'm getting bullied near the Admin Offices, HelpMe!")
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
            
        } else {
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account in settings to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
    @IBAction func shareAction6(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            facebookSheet.setInitialText("I'm getting bullied near the Track area, HelpMe!")
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
            
        } else {
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account in settings to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
    @IBAction func shareAction4(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
            
            var facebookSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            facebookSheet.setInitialText("I'm getting bullied in the Parking Area, HelpMe!")
            
            self.presentViewController(facebookSheet, animated: true, completion: nil)
            
        } else {
            
            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account in settings to share.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
}
    


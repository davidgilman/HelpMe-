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

class ViewController: UIViewController, PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate, MFMessageComposeViewControllerDelegate {

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
    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
    switch (result.value) {
    case MessageComposeResultCancelled.value:
      println("Message was cancelled")
      self.dismissViewControllerAnimated(true, completion: nil)
    case MessageComposeResultFailed.value:
      println("Message failed")
      self.dismissViewControllerAnimated(true, completion: nil)
    case MessageComposeResultSent.value:
      println("Message was sent")
     self.dismissViewControllerAnimated(true, completion: nil)
    default:
      break;
    }
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
        
           var messageVC = MFMessageComposeViewController()
    
           messageVC.body = "Enter a message";
           messageVC.recipients = ["5108619909","9252161829"]
           messageVC.messageComposeDelegate = self;
    
           self.presentViewController(messageVC, animated: false, completion: nil)
    }

}
    @IBAction func shareAction2(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook){
        
           var messageVC = MFMessageComposeViewController()
    
           messageVC.body = "Enter a message";
           messageVC.recipients = [""5108619909","9252161829""]
           messageVC.messageComposeDelegate = self;
    
           self.presentViewController(messageVC, animated: false, completion: nil)
        }
    }
    @IBAction func shareAction3(sender: AnyObject) {
               
           var messageVC = MFMessageComposeViewController()
    
           messageVC.body = "Enter a message";
           messageVC.recipients = [""5108619909","9252161829""]
           messageVC.messageComposeDelegate = self;
    
           self.presentViewController(messageVC, animated: false, completion: nil)
        }
        
}
    @IBAction func shareAction5(sender: AnyObject) {
                
           var messageVC = MFMessageComposeViewController()
    
           messageVC.body = "Enter a message";
           messageVC.recipients = [""5108619909","9252161829""]
           messageVC.messageComposeDelegate = self;
    
           self.presentViewController(messageVC, animated: false, completion: nil)
        }

    }
    @IBAction func shareAction6(sender: AnyObject) {
               
           var messageVC = MFMessageComposeViewController()
    
           messageVC.body = "Enter a message";
           messageVC.recipients = [""5108619909","9252161829""]
           messageVC.messageComposeDelegate = self;
    
           self.presentViewController(messageVC, animated: false, completion: nil)
        }
    }
    @IBAction func shareAction4(sender: AnyObject) {
               
           var messageVC = MFMessageComposeViewController()
    
           messageVC.body = "Enter a message";
           messageVC.recipients = [""5108619909","9252161829""]
           messageVC.messageComposeDelegate = self;
    
           self.presentViewController(messageVC, animated: false, completion: nil)
        }
    }
}
    


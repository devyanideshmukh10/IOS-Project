//
//  SignUpViewController.swift
//  Scintillator
//
//  Created by Lopes,Grevil Gonsalo on 11/14/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Parse
import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var displayAlertWithTitle:String!
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    func displayAlertWithTitle(status:String, message:String) {
        
        let myAlert = UIAlertController(title:"Alert", message:message, preferredStyle:UIAlertControllerStyle.Alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            //UIAlertAction(title: "OK", style:UIAlertActionStyle.Default)
        
            myAlert.addAction(okAction)
            self.presentViewController(myAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func register(sender: AnyObject) {
        // Defining the user object
        
        let usern = usernameTF.text
        let emailid = emailTF.text
        let pass = passwordTF.text
        
        
        if(usern!.isEmpty||emailid!.isEmpty||pass!.isEmpty){
            
            self.displayAlertWithTitle("all fields are required", message:"fill in all the details please!")
            return
        }
        
        let user = PFUser()
        user.username = usernameTF.text!
        user.password = passwordTF.text!
        user.email = emailTF.text!
        
        user.signUpInBackgroundWithBlock( {
            (success, error) -> Void in
            if let error = error as NSError? {
                let errorString = error.userInfo["error"] as? NSString
                // In case something went wrong, use errorString to get the error
                self.displayAlertWithTitle("Something has gone wrong", message:"\(errorString)")
            } else {
                // Everything went okay
                self.displayAlertController("Success!", message:"Registration was successful")
                let emailVerified = user["emailVerified"]
                if emailVerified != nil && (emailVerified as! Bool) == true {
                    // Everything is fine
                }
                else {
                    // The email has not been verified, so logout the user
                    PFUser.logOut()
                }
                
                //
            }
        })
        
        
        
    }
    
    func displayAlertController(title:String, message:String) {
        let uiAlertController:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        uiAlertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel,
            handler:{action in
                let login =  self.storyboard?.instantiateViewControllerWithIdentifier("loginVC") as! LoginViewController
                
                self.presentViewController(login, animated: true, completion: nil)
        }))
        self.presentViewController(uiAlertController, animated: true, completion: nil)
        
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

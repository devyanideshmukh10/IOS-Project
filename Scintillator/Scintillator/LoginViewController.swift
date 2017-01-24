//
//  LoginViewController.swift
//  Scintillator
//
//  Created by Lopes,Grevil Gonsalo on 11/14/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Parse
import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var usernameTF: UITextField!
    
    //@IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    func displayAlertWithTitle(status:String, message:String) ->String{
        
        let myAlert = UIAlertController(title:"Alert", message:message, preferredStyle:UIAlertControllerStyle.Alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        //UIAlertAction(title: "OK", style:UIAlertActionStyle.Default)
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
        return "\(status) \(message)"
    }
    
    
    @IBAction func signInBTN(sender: AnyObject){
        
        let userEmail = usernameTF!.text
        let userPassword = passwordTF!.text
        
        if userEmail!.isEmpty || userPassword!.isEmpty {
            self.displayAlertWithTitle("All fields are required", message:"please fill in all the required fields!")
            
        }

    }
    
    func displayAlertController(title:String, message:String) {
        let uiAlertController:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        uiAlertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel,
            handler:{action in
                
                let tbc = self.storyboard?.instantiateViewControllerWithIdentifier("eventNav") as! UINavigationController
                self.presentViewController(tbc, animated: true, completion: nil)
        }))
        self.presentViewController(uiAlertController, animated: true, completion: nil)
        
    }
    
    @IBAction func login(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(usernameTF.text!, password: passwordTF.text!,
                                             block:{(user, error) -> Void in
                                                if error != nil{
                                                    print(error)
                                                    self.displayAlertWithTitle("Error!", message:"Login failed 😞")
                                                   
                                                    
                                                }
                                                else {
                                                    // Everything went alright here
                                                    self.displayAlertController("Success!", message:"Login successful")
                                                    
                                                }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindForSegue(unwindSegue: UIStoryboardSegue) {
        
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

//
//  ViewController.swift
//  C0764796_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnLogin(_ sender: UIBarButtonItem)
    
    {
        self.validateUser()
    }
    
    func validateUser()
    {
        if(txtUserName.text == "shiji@gmail.com" && txtPassword.text == "shiji123")
                
            {
                
                let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                
                let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController
                self.present(nextVC, animated: true, completion: nil)
                
    }
        else
            
        {
            
            let alert  =
                
                UIAlertController(title: "Error", message: "User Email / Password incorrect", preferredStyle: UIAlertController.Style.alert)
            
            //UIAlertController.Style.alert
            
            
            
            let actionOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(actionOk)
            
            
            
            //Step - 4
            
            //Present Alert Dialog to the user
            
            self.present(alert, animated: true, completion: nil)
            
        }
  }

}

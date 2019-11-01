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
    
    @IBAction func loginClick(_ sender: UIButton)
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
  
  }

}

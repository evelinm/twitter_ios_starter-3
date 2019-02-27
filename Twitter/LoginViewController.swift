//
//  LoginViewController.swift
//  Twitter
//
//  Created by Maria Evelin Anda-Murillo on 2/26/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onLoginButton(_ sender: Any) {
        
        
        let myUrl = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client? .login(url: myUrl, success: {
            self.performSegue(withIdentifier: "loginToHome", sender: self )
        }, failure: { (error) in
            
            print("could not login")
        })
    }
  
    /*
    // MARK: - Navigation
      @IBOutlet var onLoginButton: UIView!

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

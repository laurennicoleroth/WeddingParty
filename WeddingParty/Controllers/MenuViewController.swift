//
//  MenuViewController.swift
//  WeddingParty
//
//  Created by Lauren Nicole Roth on 2/23/18.
//  Copyright © 2018 Lauren Nicole Roth. All rights reserved.
//

import UIKit
import Firebase

class MenuViewController: UIViewController {
  
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var signupButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
  
  override func viewDidAppear(_ animated: Bool) {
    if let user = Auth.auth().currentUser {
      print("Proceed to home, we have a user:", user)
      self.performSegue(withIdentifier: "toHomeScreen", sender: self)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override var preferredStatusBarStyle: UIStatusBarStyle {
    get {
      return .lightContent
    }
  }
  
}

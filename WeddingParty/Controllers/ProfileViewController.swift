//
//  ProfileViewController.swift
//  WeddingParty
//
//  Created by Lauren Nicole Roth on 2/23/18.
//  Copyright © 2018 Lauren Nicole Roth. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func logoutTouched(_ sender: Any) {
    try! Auth.auth().signOut()
    self.dismiss(animated: false, completion: nil)
  }
  
}

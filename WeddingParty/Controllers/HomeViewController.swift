//
//  HomeViewController.swift
//  WeddingParty
//
//  Created by Lauren Nicole Roth on 2/23/18.
//  Copyright © 2018 Lauren Nicole Roth. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class HomeViewController:UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func logoutTouched(_ sender: Any) {
    try! Auth.auth().signOut()
    self.dismiss(animated: false, completion: nil)
  }
  
}

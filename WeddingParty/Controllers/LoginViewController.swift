//
//  LoginViewController.swift
//  WeddingParty
//
//  Created by Lauren Nicole Roth on 2/23/18.
//  Copyright © 2018 Lauren Nicole Roth. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
  
  @IBOutlet weak var emailField: UITextField!
  @IBOutlet weak var passwordField: UITextField!
  @IBOutlet weak var dismissButton: UIButton!
  
  var continueButton:RoundedWhiteButton!
  var activityView:UIActivityIndicatorView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    uiSetup()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func uiSetup() {
    
    continueButton = RoundedWhiteButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
    continueButton.setTitleColor(secondaryColor, for: .normal)
    continueButton.setTitle("Continue", for: .normal)
    continueButton.titleLabel?.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight.bold)
    continueButton.center = CGPoint(x: view.center.x, y: view.frame.height - continueButton.frame.height - 24)
    continueButton.highlightedColor = UIColor(white: 1.0, alpha: 1.0)
    continueButton.defaultColor = UIColor.white
    continueButton.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside)
    continueButton.alpha = 0.5
    view.addSubview(continueButton)
    setContinueButton(enabled: false)
    
    activityView = UIActivityIndicatorView(activityIndicatorStyle: .gray)
    activityView.color = secondaryColor
    activityView.frame = CGRect(x: 0, y: 0, width: 50.0, height: 50.0)
    activityView.center = continueButton.center
    
    view.addSubview(activityView)
    
    emailField.delegate = self
    passwordField.delegate = self
    
    emailField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
    passwordField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
  }
  
}

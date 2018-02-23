//
//  RoundedWhiteButton.swift
//  WeddingParty
//
//  Created by Lauren Nicole Roth on 2/23/18.
//  Copyright © 2018 Lauren Nicole Roth. All rights reserved.
//

import Foundation
import UIKit

class RoundedWhiteButton:UIButton {
  
  var highlightedColor = UIColor.white
  {
    didSet {
      if isHighlighted {
        backgroundColor = highlightedColor
      }
    }
  }
  var defaultColor = UIColor.clear
  {
    didSet {
      if !isHighlighted {
        backgroundColor = defaultColor
      }
    }
  }
  
  override var isHighlighted: Bool {
    didSet {
      if isHighlighted {
        backgroundColor = highlightedColor
        
      } else {
        backgroundColor = defaultColor
      }
    }
  }
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    setup()
  }
  
  func setup() {
    self.layer.borderColor = UIColor.white.cgColor
    self.layer.borderWidth = 2.0
    self.layer.cornerRadius = self.frame.height / 2
    self.clipsToBounds = true
  }
}

extension UIButton {
  
  private func imageWithColor(color: UIColor) -> UIImage {
    let rect = CGRect(x: 0.0,y: 0.0,width: 1.0,height: 1.0)
    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()
    
    context!.setFillColor(color.cgColor)
    context!.fill(rect)
    
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return image!
  }
  
  func setBackgroundColor(color: UIColor, forUIControlState state: UIControlState) {
    self.setBackgroundImage(imageWithColor(color: color), for: state)
  }
  
}

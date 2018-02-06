//
//  ViewController.swift
//  Hamburger_menu
//
//  Created by Anand on 05/02/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    @IBOutlet weak var uiView: UIView!
    
    var hamburgerMenuIsVisible = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func hamburgerButton(_ sender: UIBarButtonItem) {
        
        UIView.animate(withDuration: 0.2, delay: 0.1, options: .curveEaseIn, animations: {
            
            if !(self.hamburgerMenuIsVisible) {
                self.leading.constant = 150
                self.trailing.constant = -150
                
                self.hamburgerMenuIsVisible = true
            } else {
                self.leading.constant = 0
                self.trailing.constant = 0
                
                self.hamburgerMenuIsVisible = false
            }
            self.view.layoutIfNeeded()
            
        }) { (animationComplete) in
            print("The Animation is complete")
        }
    }
    
    

}


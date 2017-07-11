//
//  ViewController.swift
//  EtaminaSlabel
//
//  Created by Sain-R Edwards Jr. on 7/10/17.
//  Copyright © 2017 Sain-R Edwards Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var parisLabelLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var eiffelLabelLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var eyefulLabelTrailingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var jayzLabelLeadingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* Removes the labels from the view */
        parisLabelLeadingConstraint.constant -= view.bounds.width
        eiffelLabelLeadingConstraint.constant -= view.bounds.width
        eyefulLabelTrailingConstraint.constant -= view.bounds.width
        jayzLabelLeadingConstraint.constant -= view.bounds.width
        
    }

    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 1, delay: 2, options: .curveEaseOut, animations: {
            /* Adds the lables back onto the view. */
            self.parisLabelLeadingConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 3, options: .curveEaseIn, animations: {
            self.eiffelLabelLeadingConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 4, options: .curveEaseOut, animations: {
            self.eyefulLabelTrailingConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 6, options: .curveLinear, animations: {
            self.jayzLabelLeadingConstraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
    }


}


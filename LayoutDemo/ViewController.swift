//
//  ViewController.swift
//  LayoutDemo
//
//  Created by Art Karma on 5/23/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heigthConstraint: NSLayoutConstraint!
    
    var centerX: NSLayoutConstraint?
    
    let redView = RedView()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        
//        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerX = redView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        centerX?.isActive = true
        
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        redView.layer.cornerRadius = redView.frame.width / 2
//        redView.layer.shadowRadius = 9
//        redView.layer.shadowOpacity = 0.3
//        redView.layer.shadowOffset = CGSize(width: 5, height: 8)
//        redView.clipsToBounds = false
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        view.layoutIfNeeded()
        
        
        UIView.animate(withDuration: 2) {
            //            self.redView.center = CGPoint(x: 0, y: 0)
//            self.heigthConstraint.constant = 250

            self.centerX?.constant = 100
            self.view.layoutIfNeeded()


        }
    }
}


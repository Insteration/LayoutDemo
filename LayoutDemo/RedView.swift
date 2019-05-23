//
//  RedView.swift
//  LayoutDemo
//
//  Created by Art Karma on 5/23/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class RedView: UIView {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        translatesAutoresizingMaskIntoConstraints = false

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.shadowRadius = 9
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize(width: 5, height: 8)
        self.clipsToBounds = false
    }
}

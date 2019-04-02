//
//  ViewController.swift
//  StarRate
//
//  Created by mac on 2019/4/1.
//  Copyright © 2019 Jason. All rights reserved.
//

import UIKit
import StarRateView

class ViewController: UIViewController { 

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let starView = StarRateView(frame: CGRect(x: 0, y: 0, width: 240, height: 40),totalStarCount: 5, currentStarCount: 0, starSpace: 10)
        
        starView.show { (score) in
            print(score)
        }
        
        starView.center = view.center
        
        view.addSubview(starView)


    }


}


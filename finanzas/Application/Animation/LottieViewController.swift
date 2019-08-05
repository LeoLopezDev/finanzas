//
//  LottieViewController.swift
//  finanzas
//
//  Created by Leonardo Lopez on 7/24/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit
import Lottie

class LottieViewController: UIViewController {
    
    @IBOutlet weak var animationView: LOTAnimatedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.starAnimationView()
    }
    
    func starAnimationView() {
    
        animationView.animationView.setAnimation(named: "servishero-loading")
        animationView.animationView.play()
    }
}

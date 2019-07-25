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

    @IBOutlet weak var animationLottie: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animation = Animation.named("LottieLogo1", subdirectory: "TestAnimations")

        
        animationLottie.animation(name)
        animationLottie.play()

        if let animationView = AnimationView(name: "servishero_loading") {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
            
            view.addSubview(animationView)
            
            animationView.play()
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

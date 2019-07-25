//
//  TabBarViewController.swift
//  finanzas
//
//  Created by Leonardo Lopez on 7/25/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.customButton()
    }
    
    
    func customButton(){
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = tabBar.frame.origin.y - 32
        menuButtonFrame.origin.x = view.frame.width / 2 - menuButtonFrame.size.width / 2
        
        menuButton.frame = menuButtonFrame
        menuButton.setImage(UIImage(named: "more"), for: .normal)
        menuButton.backgroundColor = UIColor(named: "GreenColor")
        menuButton.layer.cornerRadius = 8
        
        view.addSubview(menuButton)
        
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
        
    }
    
    @objc private func menuButtonAction(sender: UIButton){
        selectedIndex = 2
    }
}

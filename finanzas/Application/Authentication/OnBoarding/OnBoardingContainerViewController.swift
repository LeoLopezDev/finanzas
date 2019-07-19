//
//  OnBoardingContainerViewController.swift
//  finanzas
//
//  Created by Ikatech on 7/19/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit

class OnBoardingContainerViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "openOnBoarding", let destination = segue.destination as? OnBoardingViewController  else {
            return
        }
        
        destination.pageControl = self.pageControl
    }
}

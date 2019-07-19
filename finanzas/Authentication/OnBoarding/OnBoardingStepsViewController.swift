//
//  OnBoardingStepsViewController.swift
//  finanzas
//
//  Created by Ikatech on 7/19/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit

class OnBoardingStepsViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var onBoardingImage: UIImageView!
    
    var item: OnBoardingItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.titleLabel.text = item?.title
        self.descriptionLabel.text = item?.description
        self.onBoardingImage.image = UIImage(named: item?.imageName ?? "")
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

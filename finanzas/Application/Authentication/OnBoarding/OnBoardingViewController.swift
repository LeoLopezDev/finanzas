//
//  OnBoardingViewController.swift
//  finanzas
//
//  Created by Ikatech on 7/19/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit

struct OnBoardingItem {
    let title: String
    let description: String
    let imageName: String
}

class OnBoardingViewController: UIPageViewController {
    
    var pageControl: UIPageControl?
    
    fileprivate(set) lazy var items: [OnBoardingItem] = {
        return [
            OnBoardingItem(title: "Seve money and reduce debt", description: "Press the start button", imageName: "OnBoarding1"),
            OnBoardingItem(title: "You've finished your onboarding", description: "Press the start button", imageName: "OnBoarding2")
        ]
    }()
    
    fileprivate(set) lazy var contenViewController: [UIViewController] = {
        var items = [UIViewController]()
        for i in 0 ..< self.items.count{
            items.append(self.instanceViewController(i))
        }
        return items
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.dataSource = self
        
        self.pageControl?.numberOfPages = items.count
        self.updateContainerView(stepNumber: 0)
    }
    
    func updateContainerView(stepNumber index:Int) {
        setViewControllers([contenViewController[index]], direction: .forward, animated: true, completion: nil)
    }
    
    
    func instanceViewController(_ index: Int) -> UIViewController{
        guard let viewController = UIStoryboard(name: "OnBoarding", bundle: Bundle.main).instantiateViewController(withIdentifier: "OnBoardingSteps") as?  OnBoardingStepsViewController else {
            return UIViewController()
        }
        
        viewController.item = self.items[index]
        
        return viewController
    }

}

extension OnBoardingViewController: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let index = contenViewController.index(of: viewController)
        if index == 0{
            return nil
        }
        
        return contenViewController[index! - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = contenViewController.index(of: viewController)
        if index == contenViewController.count - 1{
            return nil
        }
        
        return contenViewController[index! + 1]
    }
    
    
}

extension OnBoardingViewController: UIPageViewControllerDelegate{
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        guard let index = contenViewController.index(of: viewControllers!.first!) else {
            return
        }
        
        pageControl?.currentPage = index
    }
}

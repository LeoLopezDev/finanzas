//
//  BudgetViewController.swift
//  finanzas
//
//  Created by Leonardo Lopez on 7/25/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var animationButton: [UIButton]!
    
    fileprivate(set) lazy var emptyStateView: UIView = {
        guard let view = Bundle.main.loadNibNamed("EmptyState", owner: nil, options: [:])?.first as? UIView else{
            return UIView()
        }
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func animateHeader(sender: UIButton){
        
    }
}

extension BudgetViewController: UITableViewDelegate{
    
}
extension BudgetViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 4
        
        tableView.backgroundView = count == 0 ? self.emptyStateView : nil
        tableView.separatorStyle = count == 0 ? .none : .singleLine
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
}

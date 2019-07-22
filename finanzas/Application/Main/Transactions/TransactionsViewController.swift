//
//  TransactionsViewController.swift
//  finanzas
//
//  Created by Ikatech on 7/22/19.
//  Copyright © 2019 leolopez. All rights reserved.
//

import UIKit

class TransactionsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    fileprivate(set) lazy var emptyStateView: UIView = {
        guard let view = Bundle.main.loadNibNamed("EmptyState", owner: nil, options: [:])?.first as? UIView else{
            return UIView()
        }
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

extension TransactionsViewController: UITableViewDelegate{
    
}
extension TransactionsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 0
        
        tableView.backgroundView = count == 0 ? self.emptyStateView : nil
        tableView.separatorStyle = count == 0 ? .none : .singleLine
        
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    
}

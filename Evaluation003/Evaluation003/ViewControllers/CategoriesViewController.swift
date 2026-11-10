//
//  CategoriesViewController.swift
//  Evaluation003
//
//  Created by Mohamed Shehab on 11/9/26.
//

import UIKit

class CategoriesViewController: UIViewController {
    var delegate : CategorySelectionDelegate?
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func closeClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

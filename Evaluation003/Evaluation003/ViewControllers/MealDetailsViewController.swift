//
//  MealDeatilsViewController.swift
//  Evaluation003
//
//  Created by Mohamed Shehab on 11/9/26.
//

import UIKit

class MealDeatilsViewController: UIViewController {
    var mealDetails: MealDetails?
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mealCategoryLabel: UILabel!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func addToCookBookClicked(_ sender: Any) {
    }
}

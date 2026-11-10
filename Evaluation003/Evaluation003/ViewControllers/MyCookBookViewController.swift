//
//  MyCookBookViewController.swift
//  Evaluation003
//
//  Created by Mohamed Shehab on 11/9/26.
//

import UIKit

class MyCookBookViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func onCloseClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GotoDetailsFromCookBookSegue" {
            let mealDetailsVC = segue.destination as! MealDeatilsViewController
            //mealDetailsVC.mealDetails = selectedMealDetails
        }
    }
}

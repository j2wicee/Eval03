//
//  SearchViewController.swift
//  Evaluation003
//
//  Created by Mohamed Shehab on 11/9/26.
//

import UIKit
import FirebaseAuth

protocol CategorySelectionDelegate: AnyObject {
    func onCategorySelected(category: Category)
}

class SearchViewController: UIViewController{
    @IBOutlet weak var keywordTextField: UITextField!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var selectedCategory : Category?
    var meals = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func onSubmitClicked(_ sender: Any) {
    }
    
    
    @IBAction func onClearClicked(_ sender: Any) {
        self.meals.removeAll()
        self.categoryLabel.text = "No Category Selected"
        self.keywordTextField.text = ""
        self.selectedCategory = nil
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            SceneDelegate.showLogin()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GotoCategoriesSegue" {
            let navController = segue.destination as! UINavigationController
            let categoriesVC = navController.topViewController as! CategoriesViewController
            categoriesVC.delegate = self
        } else if segue.identifier == "GotoDetailsFromSearchSegue" {
            let mealDetailsVC = segue.destination as! MealDeatilsViewController
            //mealDetailsVC.mealDetails = selectedMealDetails
        }
    }
}

extension SearchViewController: CategorySelectionDelegate {
    func onCategorySelected(category: Category) {
        self.selectedCategory = category
    }
}

extension UIViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

//
//  CookBookMealTableViewCell.swift
//  Evaluation003
//
//  Created by Mohamed Shehab on 11/9/26.
//

import UIKit

protocol CookBookMealTableViewCellDelegate: AnyObject {
    func didTapTrashButton(documentId: String)
}


class CookBookMealTableViewCell: UITableViewCell {
    @IBOutlet weak var mealImageView: UIImageView!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealAreaLabel: UILabel!
    @IBOutlet weak var mealCategoryLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    var delegate: CookBookMealTableViewCellDelegate?
    var mealDetails: MealDetails?
    
    func onBind(delegate: CookBookMealTableViewCellDelegate, mealDetails: MealDetails) {
        self.delegate = delegate
        self.mealDetails = mealDetails
    }
        
    
    @IBAction func onTrashClicked(_ sender: Any) {
        
    }
}

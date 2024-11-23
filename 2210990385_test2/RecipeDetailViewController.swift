//
//  RecipeDetailViewController.swift
//  2210990385_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class RecipeDetailViewController: UIViewController {

    @IBOutlet weak var instructionsTextView: UITextView!
    @IBOutlet weak var ingredientsTextView: UITextView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var CaloriesLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbnailView: UIImageView!
    var recipe: Recipe?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let recipe = recipe {
            thumbnailView.image = UIImage(named: recipe.imageName)
            nameLabel.text = recipe.title
            CaloriesLabel.text = "\(recipe.calories)"
            timeLabel.text = recipe.time
            ingredientsTextView.text = recipe.ingredients
            instructionsTextView.text = recipe.instructions
        }
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

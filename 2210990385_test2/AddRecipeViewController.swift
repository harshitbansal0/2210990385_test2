//
//  AddRecipeViewController.swift
//  2210990385_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class AddRecipeViewController: UIViewController {

    @IBOutlet weak var imageNameTextField: UITextField!
    @IBOutlet weak var sectionPicker: UIPickerView!
    @IBOutlet weak var ingredientsTextField: UITextView!
    @IBOutlet weak var instructionsTextField: UITextView!
    @IBOutlet weak var thumbnailView: UIImageView!
    @IBOutlet weak var timeLabel: UITextField!
    @IBOutlet weak var caloriesLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    let sections = ["Breakfast", "Lunch", "Dinner"]
        var selectedSection: String = "Breakfast"
        var onSave: ((Recipe) -> Void)? // Callback to save the recipe

        // MARK: - Lifecycle Methods
        override func viewDidLoad() {
            super.viewDidLoad()
            sectionPicker.dataSource = self
            sectionPicker.delegate = self
            selectedSection = sections[0] // Default to the first section
        }

        // MARK: - Actions
        @IBAction func saveButtonTapped(_ sender: Any) {
            guard let title = nameLabel.text, !title.isEmpty,
                  let imageName = imageNameTextField.text, !imageName.isEmpty,
                  let ingredients = ingredientsTextField.text, !ingredients.isEmpty,
                  let time = timeLabel.text, !time.isEmpty,
                  let caloriesText = caloriesLabel.text, let calories = Int(caloriesText),
                  let instructions = instructionsTextField.text, !instructions.isEmpty else {
                showAlert(title: "Error", message: "Please fill in all fields.")
                return
            }

            // Create a new Recipe object
            let newRecipe = Recipe(
                title: title,
                imageName: imageName,
                ingredients: ingredients,
                instructions: instructions,
                calories: calories,
                time: time,
                section: selectedSection
            )

            // Use the onSave callback to send the recipe back
            onSave?(newRecipe)
            navigationController?.popViewController(animated: true)
        }

        // MARK: - Helper Methods
        private func showAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }

    // MARK: - UIPickerView DataSource & Delegate
    extension AddRecipeViewController: UIPickerViewDataSource, UIPickerViewDelegate {
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }

        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return sections.count
        }

        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return sections[row]
        }

        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            selectedSection = sections[row]
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



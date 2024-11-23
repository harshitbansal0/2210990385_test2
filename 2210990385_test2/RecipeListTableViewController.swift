//
//  RecipeListTableViewController.swift
//  2210990385_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class RecipeListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    var groupedRecipes: [String: [Recipe]] = {
            // Create grouped dictionary
            Dictionary(grouping: recipes, by: { $0.section })
        }()
        
        // Section titles
        var sectionTitles: [String] = {
            // Extract and sort section titles
            Array(Set(recipes.map { $0.section })).sorted()
        }()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let sectionTitle = sectionTitles[section]
        return groupedRecipes[sectionTitle]?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeCellTableViewCell
                let sectionTitle = sectionTitles[indexPath.section]
                
                if let recipesInSection = groupedRecipes[sectionTitle] {
                    let recipe = recipesInSection[indexPath.row]
                    cell.nameLabel.text = "\(recipe.title) \(recipe.calories) cal - \(recipe.time)"
                    cell.thumbnailView.image = UIImage(named: recipe.imageName)
                }
                
                return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowRecipeDetail" {
                    if let detailVC = segue.destination as? RecipeDetailViewController,
                       let indexPath = tableView.indexPathForSelectedRow {
                        let sectionTitle = sectionTitles[indexPath.section]
                        if let recipesInSection = groupedRecipes[sectionTitle], let recipe = recipesInSection.first {
                            detailVC.recipe = recipe
                        }
                    }
                }
        if segue.identifier == "AddRecipeSegue",
           let addRecipeVC = segue.destination as? AddRecipeViewController {
            addRecipeVC.onSave = { [weak self] newRecipe in
                recipes.append(newRecipe)
                self?.tableView.reloadData()
            }
        }
    }

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            // Return the section title
            return sectionTitles[section]
        }
    private func updateRecipeData() {
            groupedRecipes = Dictionary(grouping: recipes, by: { $0.section })
            sectionTitles = groupedRecipes.keys.sorted()
        }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

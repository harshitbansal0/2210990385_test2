//
//  RecipeCellTableViewCell.swift
//  2210990385_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class RecipeCellTableViewCell: UITableViewCell {

    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var CalorieLabel: UILabel!
    @IBOutlet weak var thumbnailView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

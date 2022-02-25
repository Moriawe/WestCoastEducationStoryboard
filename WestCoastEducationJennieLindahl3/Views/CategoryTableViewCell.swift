//
//  CategoryCell.swift
//  WestCoastEducationJennieLindahl3
//
//  Created by Jennie Lindahl on 2022-01-30.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var coursesInCategoryLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

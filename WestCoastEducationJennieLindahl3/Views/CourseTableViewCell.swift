//
//  CourseCell.swift
//  WestCoastEducationJennieLindahl3
//
//  Created by Jennie Lindahl on 2022-01-30.
//

import UIKit

class CourseTableViewCell: UITableViewCell {
    
    @IBOutlet var courseLabel: UILabel!
    @IBOutlet var courseTimeLabel: UILabel!
    @IBOutlet var courseImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

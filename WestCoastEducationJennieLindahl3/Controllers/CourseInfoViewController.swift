//
//  CourseInfoViewController.swift
//  WestCoastEducationJennieLindahl3
//
//  Created by Jennie Lindahl on 2022-01-30.
//

import UIKit

class CourseInfoViewController: UIViewController {
    
    var course: Course?
    
    
    @IBOutlet var courseNameLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var teacherLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        courseNameLabel.text = course!.name
        timeLabel.text = course!.length
        teacherLabel.text = course!.teacher
        descriptionLabel.text = course!.info
        //online
        //grade

    }

}

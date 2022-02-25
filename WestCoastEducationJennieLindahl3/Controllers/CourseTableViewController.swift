//
//  CourseTableViewController.swift
//  WestCoastEducationJennieLindahl3
//
//  Created by Jennie Lindahl on 2022-01-30.
//

import UIKit

class CourseTableViewController: UITableViewController {
    
    var category: Category?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    // MARK: - Table view data source (before DiffableDataSource)

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return category?.availableCourses ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "CourseCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CourseTableViewCell

        cell.courseImage.image = UIImage(named: category!.courses[indexPath.row].image)
        cell.courseLabel.text = category!.courses[indexPath.row].name
        cell.courseTimeLabel.text = category!.courses[indexPath.row].length

        if category!.courses[indexPath.row].isFavorite {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }

        return cell
    }

    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let checkInAction = UIContextualAction(style: .normal, title: "Favorit") { (action, sourceView, completionHandler) in
            let cell = tableView.cellForRow(at: indexPath) as! CourseTableViewCell
            self.category!.courses[indexPath.row].isFavorite = (self.category!.courses[indexPath.row].isFavorite) ? false : true
            cell.accessoryType = (self.category!.courses[indexPath.row].isFavorite) ? .checkmark : .none
            
            completionHandler(true)
        }
        
        // Customize the action button
        checkInAction.backgroundColor = UIColor(red: 39.0/255.0, green: 174.0/255.0, blue: 96.0/255.0, alpha: 1.0)
        checkInAction.image = self.category!.courses[indexPath.row].isFavorite ? UIImage(named: "undo") : UIImage(named: "tick")
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [checkInAction])
        
        return swipeConfiguration
    }

    // MARK: - Navigation

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ShowCourseInfo" {
                if let indexPath = tableView.indexPathForSelectedRow {
                    let destinationController = segue.destination as! CourseInfoViewController
                    destinationController.course = category?.courses[indexPath.row]
                }
            }
        }




    
}

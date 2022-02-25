//
//  CategoryTableViewController.swift
//  WestCoastEducationJennieLindahl3
//
//  Created by Jennie Lindahl on 2022-01-30.
//

import UIKit

class CategoryTableViewController: UITableViewController {

    var categories: [Category] = [
        Category(name: "Mobile Development", courses:
                    [Course(name: "Google Flutter", length: "15 hours", online: true, teacher: "Cecilia", grade: 4.5, info: "Flutter course info text", image: "javascript"),
                     Course(name: "Android Development", length: "10 hours", online: false, teacher: "Anna", grade: 3.5, info: "Android course info text", image: "android"),
                     Course(name: "iOS Development", length: "4 weeks", online: true, teacher: "Sofia", grade: 5.0, info: "iOS bla bla", image: "iOS"),
                     Course(name: "Swift", length: "2 weeks", online: true, teacher: "Therese", grade: 4.5, info: "SwiftISTHASHIT", image: "swift"),
                     Course(name: "React Native", length: "15 hours", online: true, teacher: "Ulrika", grade: 4.5, info: "React going strong", image: "react"),
                     Course(name: "Kotlin", length: "25 hours", online: true, teacher: "Susanne", grade: 4.5, info: "Kotlin is Android", image: "kotlin"),
                     Course(name: "Swift UI", length: "5 hours", online: true, teacher: "Therese", grade: 4.5, info: "UI has never been easier", image: "swift")]),
        Category(name: "Web Development", courses:
                    [Course(name: "JavaScript", length: "15 hours", online: true, teacher: "Olivia", grade: 4.5, info: "Webpages Bla, bla, bla", image: "javascript"),
                     Course(name: "React", length: "5 weeks", online: false, teacher: "Henrietta", grade: 4.5, info: "React la la lalala", image: "react"),
                     Course(name: "CSS", length: "10 hours", online: true, teacher: "Paula", grade: 4.5, info: "CSS is pretty", image: "css"),
                     Course(name: "Angular", length: "10 weeks", online: true, teacher: "Kristina", grade: 4.5, info: "Sounds tricky", image: "angular"),
                     Course(name: "Node JS", length: "5 hours", online: true, teacher: "Lisa", grade: 4.5, info: "Node nod nod", image: "nodejs"),
                     Course(name: "PHP", length: "10 weeks", online: false, teacher: "Malva", grade: 4.5, info: "PHP is something", image: "php"),
                     Course(name: "HTML5", length: "8 hours", online: true, teacher: "Lisa", grade: 4.5, info: "Make your own webpage", image: "html"),
                     Course(name: "Django", length: "3 weeks", online: true, teacher: "Cecilia", grade: 4.5, info: "Django Fett", image: "django")]),
        Category(name: "Data Science", courses:
                    [Course(name: "Python"),
                     Course(name: "Machine Learning"),
                     Course(name: "Deep learning"),
                     Course(name: "Data Analysis"),
                     Course(name: "Artificial Intelligence"),
                     Course(name: "Statistics"),
                     Course(name: "R"),
                     Course(name: "Neural Networks")] ),
        Category(name: "Programming languages", courses:
                    [Course(name: "Python"),
                     Course(name: "Java"),
                     Course(name: "C#"),
                     Course(name: "React"),
                     Course(name: "C++"),
                     Course(name: "JavaScript"),
                     Course(name: "C"),
                     Course(name: "Go")] ),
        Category(name: "Software Engineering", courses:
                    [Course(name: "Data Structure"),
                     Course(name: "Coding interview"),
                     Course(name: "Algorithms"),
                     Course(name: "Kubernetes"),
                     Course(name: "Microservices"),
                     Course(name: "Software Architecture"),
                     Course(name: "Blockchain"),
                     Course(name: "Python")])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        


    // MARK: - Table view data source (before DiffableDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "CategoryCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CategoryTableViewCell

        cell.categoryLabel.text = categories[indexPath.row].name
        cell.coursesInCategoryLabel?.text = self.categories[indexPath.row].listAllCourses()

        return cell
    }
    
    // MARK: - Navigation
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCourse" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! CourseTableViewController
                destinationController.category = categories[indexPath.row]
            }
        }
    }
    


}

import UIKit

struct Course: Hashable {
    var name: String
    var length: String
    var online: Bool
    var isFavorite: Bool
    var info: String
    
    
    // Initializer for testing (just need to fill in name of course)
    init(name: String) {
        self.name = name
        length = "unknown"
        online = true
        isFavorite = false
        info = "Bla,bla, bla"
        
    }
    
    // Initializer for a course. Favorite is always set to false at init. Can be changed by user.
    init(name: String, length: String, online: Bool, info: String){
        self.name = name
        self.length = length
        self.online = online
        self.info = info
        self.isFavorite = false
        
    }
}

struct Category: Hashable {
    var name: String
    var availableCourses: Int
    var courses: [Course]
    
    init(name: String, courses: [Course]) {
        self.name = name
        self.availableCourses = courses.count
        self.courses = courses
    }
    
}

var categories: [Category] = [
    Category(name: "Mobile Development", courses: [Course(name: "Google Flutter"), Course(name: "Android Development"), Course(name: "iOS Development"), Course(name: "Swift"), Course(name: "React Native"), Course(name: "Kotlin"), Course(name: "SwiftUI")]),
    Category(name: "Web Development", courses: [Course(name: "JavaScript"), Course(name: "React"), Course(name: "CSS"), Course(name: "Angular"), Course(name: "NodeJS"), Course(name: "PHP"), Course(name: "HTML5"), Course(name: "Django")] ),
    Category(name: "Data Science", courses: [Course(name: "Python"), Course(name: "Machine Learning"), Course(name: "Deep learning"), Course(name: "Data Analysis"), Course(name: "Artificial Intelligence"), Course(name: "Statistics"), Course(name: "R (programming language)"), Course(name: "Neural Networks")] ),
    Category(name: "Programming languages", courses: [Course(name: "Python"), Course(name: "Java"), Course(name: "C#"), Course(name: "React"), Course(name: "C++"), Course(name: "JavaScript"), Course(name: "C"), Course(name: "Go")] ),
    Category(name: "Software Engineering", courses: [Course(name: "Data Structure"), Course(name: "Coding interview"), Course(name: "Algorithms"), Course(name: "Kubernetes"), Course(name: "Microservices"), Course(name: "Software Architecture"), Course(name: "Blockchain"), Course(name: "Python")] )
]

categories[0].courses
var allCourses1 = ""

for course in categories[1].courses {
    allCourses1 += "\(course.name) ,"
}

print(allCourses1)


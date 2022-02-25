//
//  Category.swift
//  westCoastEducationJennieLindahl
//
//  Created by Jennie Lindahl on 2022-01-19.
//

import Foundation

struct Category: Hashable {
    var name: String
    var availableCourses: Int
    var courses: [Course]
    
    init(name: String, courses: [Course]) {
        self.name = name
        self.availableCourses = courses.count
        self.courses = courses
    }
    
    func listAllCourses() -> String {
        var allCourses = ""
        
        for course in courses {
            allCourses += "\(course.name), "
        }
            
        return allCourses
    }
    
}

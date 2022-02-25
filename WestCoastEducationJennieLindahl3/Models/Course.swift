//
//  Course.swift
//  westCoastEducationJennieLindahl
//
//  Created by Jennie Lindahl on 2022-01-19.
//

import Foundation

struct Course: Hashable {
    var name: String
    var length: String
    var online: Bool
    var teacher: String
    var grade: Double
    
    var info: String
    var image: String
    
    var isFavorite: Bool
    
    
    // Initializer for testing (just need to fill in name of course)
    init(name: String) {
        self.name = name
        length = "unknown hours"
        online = true
        teacher = "unknown teacher"
        grade = 0.0
        info = "Info text about the course"
        image = "html"
        isFavorite = false
        
    }
    
    // Initializer for a course. Favorite is always set to false at init. Should be changed by user.
    init(name: String, length: String, online: Bool, teacher: String, grade: Double, info: String, image: String){
        self.name = name
        self.length = length
        self.online = online
        self.teacher = teacher
        self.grade = grade
        self.info = info
        self.image = image
        self.isFavorite = false
        
    }
}

// Detta skall finnas info om:
// Klassrum / Distans
// Lärare
// Genomsnittlig betyg som kursen fått av elever
// Längd på kursen
// Innehåll i kursen

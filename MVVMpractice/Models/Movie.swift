//
//  UserInfo.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import Foundation

struct Movie {
    
    let poster: String
    let title: String
    let director: String
    let genre: Genre
    let releaseDate: String
    let score: Int
    
    init(_ poster: String, _ title: String, _ director: String, _ genre: Genre, _ releaseDate: String, _ score: Int) {
        self.poster = poster
        self.title = title
        self.director = director
        self.genre = genre
        self.releaseDate = releaseDate
        self.score = score
    }
}

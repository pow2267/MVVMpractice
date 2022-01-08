//
//  UserInfoViewModel.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import Foundation

// Model에게서 전달받은 데이터를 View가 바로 보여주기 적합하도록 가공
class MovieViewModel {
    
    let movies: [Movie] = [
        Movie("noWayHome", "SPIDER-MAN: NO WAY HOME", "Jon Watts", .actionAdventure, "2021년 12월 17일", 94),
        Movie("tickTickBoom", "TICK, TICK... BOOM!", "Lin-Manuel Miranda", .musicalPerformingarts, "2021년 11월 12일", 88),
        Movie("theGentlemen", "THE GENTLEMEN", "Guy Ritchie", .comedy, "2020년 01월 24일", 75),
        Movie("wild", "WILD", "Jean-Marc Vallée", .drama, "2014년 12월 03일", 88),
        Movie("theGreatGatsby", "THE GREAT GATSBY", "Baz Luhrmann", .drama, "2013년 05월 10일", 48)
    ]
    
    let poster: Observable<String?> = Observable(nil)
    let title: Observable<String?> = Observable(nil)
    let director: Observable<String?> = Observable(nil)
    let genre: Observable<Genre?> = Observable(nil)
    let releaseDate: Observable<String?> = Observable(nil)
    let score: Observable<Int?> = Observable(nil)
    var index: Int = 0
    
    init() {
        setMovieValue(index)
    }
    
    func getDirectorText(_ value: String) -> String {
        return "\(value) 감독"
    }
    
    func getGenreText(_ value: Genre) -> String {
        switch value {
        case .actionAdventure:
            return "액션 & 어드벤쳐"
        case .animation:
            return "애니메이션"
        case .arthouseInternatioanl:
            return "아트 하우스 & 인터내셔널"
        case .classics:
            return "클래식"
        case .comedy:
            return "코미디"
        case .documentary:
            return "다큐멘터리"
        case .drama:
            return "드라마"
        case .horror:
            return "호러"
        case .kidsFamily:
            return "어린이 & 가족"
        case .musicalPerformingarts:
            return "뮤지컬 & 퍼포먼스"
        case .mysterySuspense:
            return "미스테리 & 서스펜스"
        case .romance:
            return "로맨스"
        case .scifiFantasy:
            return "SF & 판타지"
        case .sports:
            return "스포츠"
        }
    }
    
    func getReleaseDateText(_ value: String) -> String {
        return "\(value) 개봉"
    }
    
    func getScoreText(_ value: Int) -> String {
        switch value {
        case ..<50:
            return "🫑 \(value)점"
        case 50..<80:
            return "🍅 \(value)점"
        case 80...100:
            return "🍅✨ \(value)점"
        default:
            return "평가 정보 없음"
        }
    }
    
    func changeMovie(_ isForward: Bool) {
        if isForward {
            index = (index == movies.count - 1 ? 0 : index + 1)
        } else {
            index = (index == 0 ? movies.count - 1 : index - 1)
        }
        
        setMovieValue(index)
    }
    
    private func setMovieValue(_ index: Int) {
        poster.value = movies[index].poster
        title.value = movies[index].title
        director.value = movies[index].director
        genre.value = movies[index].genre
        releaseDate.value = movies[index].releaseDate
        score.value = movies[index].score
    }
}

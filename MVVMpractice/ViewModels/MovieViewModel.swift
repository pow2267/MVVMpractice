//
//  UserInfoViewModel.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import Foundation

// Model에게서 전달받은 데이터를 View가 바로 보여주기 적합하도록 가공
class MovieViewModel {
    
    let movie: Movie
    
    init() {
        self.movie = Movie("noWayHome",
                           "SPIDER-MAN: NO WAY HOME",
                           "Jon Watts",
                           .actionAdventure,
                           "2021년 12월 17일",
                           100)
    }
    
    var poster: String {
        return movie.poster
    }
    
    var title: String {
        return movie.title
    }
    
    var directorText: String {
        return "\(movie.director) 감독"
    }
    
    var genreText: String {
        switch movie.genre {
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
    
    var releaseDateText: String {
        return "\(movie.releaseDate) 개봉"
    }
    
    var scoreText: String {
        switch movie.score {
        case ..<50:
            return "🫑 \(movie.score)점"
        case 50..<80:
            return "🍅 \(movie.score)점"
        case 80...100:
            return "🍅✨ \(movie.score)점"
        default:
            return "평가 정보 없음"
        }
    }
    
    func configure(_ view: MovieView) {
        view.poster = movie.poster
        view.titleLabel.text = movie.title
        view.directorLabel.text = directorText
        view.genreTextLabel.text = genreText
        view.releaseDateLabel.text = releaseDateText
        view.scoreLabel.text = scoreText
    }
}

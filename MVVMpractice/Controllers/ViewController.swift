//
//  ViewController.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import UIKit

class ViewController: UIViewController {
    
    let movieView = MovieView()
    let movieViewModel = MovieViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieView.translatesAutoresizingMaskIntoConstraints = false
        self.setBinding()
        
        self.view.addSubview(movieView)
        
        // Set layout
        [
            movieView.topAnchor.constraint(equalTo: self.view.topAnchor),
            movieView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            movieView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            movieView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ].forEach({ $0.isActive = true })
        
        movieView.rightButton.addAction(UIAction(handler: {_ in
            self.movieViewModel.changeMovie(true)
        }), for: .touchUpInside)
        
        movieView.leftButton.addAction(UIAction(handler: {_ in
            self.movieViewModel.changeMovie(false)
        }), for: .touchUpInside)
    }
    
    private func setBinding() {
        movieViewModel.poster.bind({ value in
            self.movieView.posterImageView.image = UIImage(named: value!)
        })
        
        movieViewModel.title.bind({ value in
            self.movieView.titleLabel.text = value!
        })
        
        movieViewModel.director.bind({ value in
            self.movieView.directorLabel.text = self.movieViewModel.getDirectorText(value!)
        })
        
        movieViewModel.genre.bind({ value in
            self.movieView.genreTextLabel.text = self.movieViewModel.getGenreText(value!)
        })
        
        movieViewModel.releaseDate.bind({ value in
            self.movieView.releaseDateLabel.text = self.movieViewModel.getReleaseDateText(value!)
        })
        
        movieViewModel.score.bind({ value in
            self.movieView.scoreLabel.text = self.movieViewModel.getScoreText(value!)
        })
    }
}


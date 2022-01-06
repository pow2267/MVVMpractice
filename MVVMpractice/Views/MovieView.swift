//
//  MovieView.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import UIKit

class MovieView: UIView {
    
    var poster: String = "" {
        willSet {
            posterImageView.image = UIImage(named: newValue)
        }
    }

    let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.frame.size = CGSize(width: 240, height: 240)
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 16)
        label.textColor = .black
        return label
    }()
    
    let directorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 14)
        label.textColor = .gray
        return label
    }()
    
    let genreTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 14)
        label.textColor = .gray
        return label
    }()
    
    let releaseDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 14)
        label.textColor = .gray
        return label
    }()
    
    let scoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 15)
        label.textColor = .red
        return label
    }()
    
    override func draw(_ rect: CGRect) {
        addSubview(posterImageView)
        addSubview(titleLabel)
        addSubview(directorLabel)
        addSubview(genreTextLabel)
        addSubview(releaseDateLabel)
        addSubview(scoreLabel)
        
        // Set layout
        [
            posterImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            posterImageView.topAnchor.constraint(equalTo: self.centerYAnchor, constant: -CGFloat(self.frame.height / 3)),
            posterImageView.widthAnchor.constraint(equalToConstant: 240),
            posterImageView.heightAnchor.constraint(equalToConstant: 240)
        ].forEach({ $0.isActive = true })
        
        [
            titleLabel.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true})
        
        [
            directorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            directorLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true})
        
        [
            genreTextLabel.topAnchor.constraint(equalTo: directorLabel.bottomAnchor, constant: 10),
            genreTextLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true})
        
        [
            releaseDateLabel.topAnchor.constraint(equalTo: genreTextLabel.bottomAnchor, constant: 10),
            releaseDateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true})
        
        [
            scoreLabel.topAnchor.constraint(equalTo: releaseDateLabel.bottomAnchor, constant: 20),
            scoreLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true})
    }
}

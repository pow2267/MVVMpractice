//
//  MovieView.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import UIKit

class MovieView: UIView {

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
    
    let leftButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(systemName: "chevron.left.circle.fill"), for: .normal)
        button.tintColor = .black
        button.alpha = 0.3
        return button
    }()
    
    let rightButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(systemName: "chevron.right.circle.fill"), for: .normal)
        button.tintColor = .black
        button.alpha = 0.3
        return button
    }()
    
    override func draw(_ rect: CGRect) {
        addSubview(posterImageView)
        addSubview(titleLabel)
        addSubview(directorLabel)
        addSubview(genreTextLabel)
        addSubview(releaseDateLabel)
        addSubview(scoreLabel)
        addSubview(leftButton)
        addSubview(rightButton)
        
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
        ].forEach({ $0.isActive = true })
        
        [
            directorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            directorLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true })
        
        [
            genreTextLabel.topAnchor.constraint(equalTo: directorLabel.bottomAnchor, constant: 10),
            genreTextLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true })
        
        [
            releaseDateLabel.topAnchor.constraint(equalTo: genreTextLabel.bottomAnchor, constant: 10),
            releaseDateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true })
        
        [
            scoreLabel.topAnchor.constraint(equalTo: releaseDateLabel.bottomAnchor, constant: 20),
            scoreLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ].forEach({ $0.isActive = true })
        
        [
            leftButton.widthAnchor.constraint(equalToConstant: 50),
            leftButton.heightAnchor.constraint(equalToConstant: 50),
            leftButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            leftButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5)
        ].forEach({ $0.isActive = true })
        
        [
            rightButton.widthAnchor.constraint(equalToConstant: 50),
            rightButton.heightAnchor.constraint(equalToConstant: 50),
            rightButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            rightButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)
        ].forEach({ $0.isActive = true })
    }
}

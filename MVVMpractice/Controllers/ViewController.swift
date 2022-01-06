//
//  ViewController.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            
        let movieView = MovieView()
        movieView.translatesAutoresizingMaskIntoConstraints = false
        
        let movieViewModel = MovieViewModel()
        movieViewModel.setBinding(movieView)
        
        self.view.addSubview(movieView)
        
        // Set layout
        [
            movieView.topAnchor.constraint(equalTo: self.view.topAnchor),
            movieView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            movieView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            movieView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ].forEach({ $0.isActive = true })
        
        movieView.rightButton.addAction(UIAction(handler: { _ in
            movieViewModel.touchUpButton(true)
        }), for: .touchUpInside)
        
        movieView.leftButton.addAction(UIAction(handler: { _ in
            movieViewModel.touchUpButton(false)
        }), for: .touchUpInside)
    }
}


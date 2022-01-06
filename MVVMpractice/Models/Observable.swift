//
//  Observable.swift
//  MVVMpractice
//
//  Created by kwon on 2022/01/06.
//

import Foundation

class Observable<T> {
    typealias Listener = (T) -> Void
    
    var listener: Listener?
    var value: T {
        willSet {
            listener?(newValue)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
}

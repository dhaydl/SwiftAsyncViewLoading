//
//  LoadableObject.swift
//  
//
//  Created by David Haydl on 07.04.22.
//

import Foundation

public protocol LoadableObject: ObservableObject {
    associatedtype Output
    var state: LoadingState<Output> { get }
    func load()
}

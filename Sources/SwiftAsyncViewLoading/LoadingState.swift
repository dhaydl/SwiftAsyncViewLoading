//
//  LoadingState.swift
//  
//
//  Created by David Haydl on 07.04.22.
//

import Foundation

public enum LoadingState<Value> {
    case idle
    case loading
    case failed(Error)
    case loaded(Value)
}

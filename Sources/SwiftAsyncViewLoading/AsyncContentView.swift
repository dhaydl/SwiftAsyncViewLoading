//
//  AsyncContentView.swift
//  
//
//  Created by David Haydl on 07.04.22.
//

import SwiftUI

public struct AsyncContentView<Source: WWLCLoadableObject, Content: View>: View {
    @ObservedObject public var source: Source
    public var content: (Source.Output) -> Content

    public init(source: Source, @ViewBuilder content: @escaping (Source.Output) -> Content) {
        self.source = source
        self.content = content
    }
    
    public var body: some View {
        switch source.state {
        case .idle:
            Color.clear
            .onAppear(perform: source.load)
        case .loading:
            ProgressView()
        case .failed(let error):
            Text(error.localizedDescription)
            .font(.footnote)
            .foregroundColor(.gray)
        case .loaded(let output):
            content(output)
        }
    }
}

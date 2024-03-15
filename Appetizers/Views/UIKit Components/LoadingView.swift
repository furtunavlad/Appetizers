//
//  LoadingView.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 11.03.2024.
//

import SwiftUI

//struct ActivityIndicator: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor.brandPrimary
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//    }
//    
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//}


struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .accentColor))
                .scaleEffect(1.5)
        }
    }
}

//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 09.03.2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel() // @StateObject needed to initialize viewmodel
    @State private var isShowingAppetizerDetail = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingAppetizerDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingAppetizerDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingAppetizerDetail ? 20 : 0)
            
            if isShowingAppetizerDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!, isShowingAppetizerDetail: $isShowingAppetizerDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
    
}

#Preview {
    AppetizerListView()
}

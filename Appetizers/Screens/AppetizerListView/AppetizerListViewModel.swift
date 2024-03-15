//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 11.03.2024.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingAppetizerDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    
//    func getAppetizers() {
//        isLoading = true // switch on the loading screen
//        NetworkManager.shared.getAppetizers { result in
//            DispatchQueue.main.async { [self] in // capture self so there is no need to type it everywhere
//                isLoading = false // switch off the loading screen
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//                    
//                case .failure(let error):
//                    switch error {
//                    case .invalidResponse:
//                        alertItem = AlertContext.invalidResponse // from the AlertContext struct in the Alert.swift
//                        
//                    case .invalidURL:
//                        alertItem = AlertContext.invalidURL
//                        
//                    case .invalidData:
//                        alertItem = AlertContext.invalidData
//                        
//                    case .unableToComplete:
//                        alertItem = AlertContext.unableToComplete
//                    }
//                }
//            }
//            
//        }
//    }
    func getAppetizers() {
        isLoading = true // switch on the loading screen
        
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false // switch off the loading screen
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.unableToComplete
                }
                alertItem = AlertContext.unableToComplete
                isLoading = false
            }
        }
    }
}

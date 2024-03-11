//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 11.03.2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingAppetizerDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 5)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .font(.caption)
                            .bold()
                        
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .font(.caption)
                            .bold()
                        
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .font(.caption)
                            .bold()
                        
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                APButton(title: "RON \(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingAppetizerDetail = false
        } label: {
            XDissmissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                        isShowingAppetizerDetail: .constant(true))
}

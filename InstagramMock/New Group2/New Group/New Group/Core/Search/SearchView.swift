//
//  SearchView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 10.01.24.
//

import SwiftUI

struct SearchView: View {
  
  @State private var searchText: String = ""
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVStack(spacing: 12) {
          ForEach(1...15, id: \.self) { user in
            HStack {
              Image("photo2")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
              
              VStack(alignment: .leading) {
                Text("Username")
                  .fontWeight(.semibold)
                Text("Shushanchik")
              }
              .font(.footnote)
              
              Spacer()
            }
            .padding(.horizontal)
          }
        }
        .padding(.top, 8)
        .searchable(text: $searchText, prompt: "Search...")
      }
      .navigationTitle("Explore")
      .navigationBarTitleDisplayMode(.inline)
      
    }
  }
}

#Preview {
  SearchView()
}

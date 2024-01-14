//
//  FeedView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 10.01.24.
//

import SwiftUI

struct FeedView: View {
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVStack(spacing: 32) {
          ForEach(0...10, id: \.self) { post in
            FeedCellView()
          }
        }
        .padding(.top, 8)
      }
      .navigationTitle("Feed")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Image("instagram_logo")
            .resizable()
            .scaledToFill()
            .frame( height: 40)
        }
          
          ToolbarItem(placement: .navigationBarTrailing) {
            Image(systemName: "paperplane")
              .imageScale(.large)
        }
      }
    }
  }
}

#Preview {
  FeedView()
}

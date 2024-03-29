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
          ForEach(User.MOCK_USERS) { user in
            NavigationLink(value: user) {
              HStack {
                Image(user.profileImageUrl ?? "instagram_logo_icon")
                  .resizable()
                  .scaledToFill()
                  .frame(width: 40, height: 40)
                  .clipShape(Circle())
                
                VStack(alignment: .leading) {
                  Text(user.username)
                    .fontWeight(.semibold)
                  
                  if let fullname = user.fullname {
                    Text(fullname)
                  }

                }
                .font(.footnote)
                
                Spacer()
              }
              .foregroundStyle(Color.black)
              .padding(.horizontal)
            }
            
            
          }
        }
        .padding(.top, 8)
        .searchable(text: $searchText, prompt: "Search...")
      }
      .navigationDestination(for: User.self, destination: { user in
        ProfileView(user: user)
      })
      .navigationTitle("Explore")
      .navigationBarTitleDisplayMode(.inline)
      
    }
  }
}

#Preview {
  SearchView()
}

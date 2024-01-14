//
//  ProfileView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 09.01.24.
//

import SwiftUI

struct ProfileView: View {
  private let gridItems: [GridItem] = [
    .init(.flexible(), spacing: 1),
    .init(.flexible(), spacing: 1),
    .init(.flexible(), spacing: 1)
]

  var body: some View {
    NavigationStack {
      ScrollView {
        //Hearder
        VStack(spacing: 10) {
          HStack {
            Image("photo4")
              .resizable()
              .scaledToFill()
              .frame(width: 80, height: 80)
              .clipShape(Circle())
            
            Spacer()
            
            HStack(spacing: 8) {
              UserStatView(value: 3, title: "Posts")
              
              UserStatView(value: 100, title: "Followers")
              
              UserStatView(value: 30, title: "Following")
            }
          }
          .padding(.horizontal)

          VStack(alignment: .leading, spacing: 4) {
            Text("Username")
              .font(.footnote)
              .fontWeight(.semibold)
            Text("Bio or not bio")
              .font(.footnote)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal)
          
          
          Button {
            //Edit porfile screen
          } label: {
            Text("Edit Profile")
              .font(.subheadline)
              .fontWeight(.semibold)
              .frame(width: 360, height: 32)
              .foregroundColor(.black)
              .overlay(
                RoundedRectangle(cornerRadius: 6)
                  .stroke(Color.gray, lineWidth: 1)
              )
          }
          Divider()
        }
        
        // Grid
        LazyVGrid(columns: gridItems, spacing: 1) {
          ForEach(0...15, id: \.self) { index in
          Image("photo4")
              .resizable()
              .scaledToFill()
  //            .clipped()
          }
        }
        
      }
      .navigationTitle("Profile")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            
          } label: {
            Image(systemName: "line.3.horizontal")
              .foregroundColor(.black)
          }
        }
      }
    }
  }
}

#Preview {
  ProfileView()
}

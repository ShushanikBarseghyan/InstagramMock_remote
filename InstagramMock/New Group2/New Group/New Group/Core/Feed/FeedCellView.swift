//
//  FeedCellView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 10.01.24.
//

import SwiftUI

struct FeedCellView: View {
  var body: some View {
    VStack {
      HStack {
        Image("photo4")
          .resizable()
          .scaledToFill()
          .frame(width: 40, height: 40)
          .clipShape(Circle())
        
        Text("username")
          .font(.footnote)
          .fontWeight(.semibold)
        
        Spacer()
      }
      .padding(.leading)
      
      Image("photo1")
        .resizable()
        .scaledToFill()
        .frame(height: 400)
        .clipShape(Rectangle())
      
      
      HStack(spacing: 16) {
        Button {
          print("like post")
        } label: {
          Image(systemName: "heart")
            .imageScale(.large)
        }
        
        Button {
          print("comment post")

        } label: {
          Image(systemName: "bubble.right")
            .imageScale(.large)
        }
        
        Button {
          print("share post")

        } label: {
          Image(systemName: "paperplane")
            .imageScale(.large)
        }
        
        Spacer()
      }
      .padding(.leading, 8)
      .padding(.top, 4)
      .foregroundColor(.black)
        
      Text("23 likes")
        .font(.footnote)
        .fontWeight(.semibold)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 10)
        .padding(.top, 1)
      
      HStack {
        Text("Username ")
          .fontWeight(.semibold) +
        Text("Caption text")
      }
      .font(.footnote)
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(.leading, 10)
      .padding(.top, 1)

      
      Text("6h ago")
        .font(.footnote)
        .foregroundStyle(Color.gray)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 10)
        .padding(.top, 1)
      
      }
    }
  }
  
  #Preview {
    FeedCellView()
  }

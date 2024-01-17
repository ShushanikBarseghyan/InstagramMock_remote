//
//  UploadPostView.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 17.01.24.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
  @StateObject var uploadPostViewModel = UploadPostViewModel()
  @State private var caption: String = ""
  @State private var imagePickerPresented: Bool = false
  @Binding var tabIndex: Int
  
    var body: some View {
      VStack {
        HStack {
          Button {
            caption = ""
            uploadPostViewModel.selectedImage = nil
            uploadPostViewModel.postImage = nil
            tabIndex = 0
          } label: {
            Text("Cancel")
          }
          
          Spacer()
          
          Text("New Post")
            .fontWeight(.semibold)
          
          Spacer()
          
          Button {
            print("upload")
          } label: {
            Text("Upload")
              .fontWeight(.semibold)
          }
          
        }
        .padding(.horizontal)
        
        
        
        HStack (spacing: 8){
          if let image = uploadPostViewModel.postImage {
            image
              .resizable()
              .scaledToFill()
              .frame(width: 100, height: 100)
              .clipped()
          }
                     
          TextField("Enter your caption...", text: $caption, axis: .vertical)
        }
        .padding(.horizontal)

        
        Spacer()
        
      }
      .onAppear{
        imagePickerPresented.toggle()
      }
      .photosPicker(isPresented: $imagePickerPresented, selection: $uploadPostViewModel.selectedImage)
    }
}

#Preview {
  UploadPostView(tabIndex: .constant(1))
}

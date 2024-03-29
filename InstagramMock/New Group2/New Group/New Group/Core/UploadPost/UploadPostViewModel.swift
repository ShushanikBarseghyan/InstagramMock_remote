//
//  UploadPostViewModel.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 17.01.24.
//

import Foundation
import SwiftUI
import PhotosUI

@MainActor
class UploadPostViewModel: ObservableObject {
  
  @Published var selectedImage: PhotosPickerItem? {
    didSet {
//      if let image = selecetedImage {
        Task { await loadImage(fromItem: selectedImage) }
//      }
    }
  }
  
  @Published var postImage: Image?
  
  func loadImage(fromItem item: PhotosPickerItem?) async {
    guard let item = item else { return }
    
    guard let data = try? await item.loadTransferable(type: Data.self) else { return }
    guard let uiImage = UIImage(data: data) else { return }
    self.postImage = Image(uiImage: uiImage)
  }
}

//
//  Post.swift
//  InstagramMock
//
//  Created by Shushan Barseghyan on 16.01.24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
  
  let id: String
  let ownerID: String
  let caption: String
  var likes: Int
  let imageUrl: String
  let timestamp: Date
  var user: User?
  
}

extension Post {
  
  static var MOCK_POSTS: [Post] = [
    .init(id: UUID().uuidString, ownerID: UUID().uuidString, caption: "Caption 1!", likes: 100, imageUrl: "photo1", timestamp: Date(), user: User.MOCK_USERS[0]),
    .init(id: UUID().uuidString, ownerID: UUID().uuidString, caption: "Caption 2!", likes: 10, imageUrl: "photo2", timestamp: Date(), user: User.MOCK_USERS[1]),
    .init(id: UUID().uuidString, ownerID: UUID().uuidString, caption: "Caption 3!", likes: 0, imageUrl: "photo3", timestamp: Date(), user: User.MOCK_USERS[0]),
    .init(id: UUID().uuidString, ownerID: UUID().uuidString, caption: "Caption 4!", likes: 9000, imageUrl: "photo4", timestamp: Date(), user: User.MOCK_USERS[2]),
    .init(id: UUID().uuidString, ownerID: UUID().uuidString, caption: "Caption 5!", likes: 2, imageUrl: "facebookLogo", timestamp: Date(), user: User.MOCK_USERS[2])
  ]
}

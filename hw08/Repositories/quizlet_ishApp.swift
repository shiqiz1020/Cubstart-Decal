//
//  Quizlet_ishUITests.swift
//  Quizlet-ishUITests
//
//  Created by Shiqi Zhang on 4/15/22.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class CardRepository: ObservableObject {
  private let path: String = "cards"
  private let store = Firestore.firestore()
  func add(_ card: Card) {
    do {
      _ = try store.collection(path).addDocument(from: card)
    } catch {
      fatalError("Unable to add card: \(error.localizedDescription).")
    }
  }
}

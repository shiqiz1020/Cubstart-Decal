//
//  Quizlet_ishTests.swift
//  Quizlet-ishTests
//
//  Created by Shiqi Zhang on 4/15/22.
//

import Combine

class CardViewModel: ObservableObject, Identifiable {
  private let cardRepository = CardRepository()
    @Published var cardViewModels: [CardViewModel] = []
    private var cancellables: Set<AnyCancellable> = []

    init() {
      cardRepository.$cards.map { cards in
        cards.map(CardViewModel.init)
      }
      .assign(to: \.cardViewModels, on: self)
      .store(in: &cancellables)
    }
    func remove() {
        cardRepository.remove(card)
      }

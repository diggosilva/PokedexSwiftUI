//
//  PokedexView.swift
//  PokedexSwifUI
//
//  Created by Diggo Silva on 05/06/24.
//

import SwiftUI

struct PokedexView: View {
    private var gridItems = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(1..<151) { _ in
                        PokemonCell(pokemon: MOCK_POKEMON[4])
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

#Preview {
    PokedexView()
}

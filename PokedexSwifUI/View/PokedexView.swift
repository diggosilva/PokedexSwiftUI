//
//  PokedexView.swift
//  PokedexSwifUI
//
//  Created by Diggo Silva on 05/06/24.
//

import SwiftUI

struct PokedexView: View {
    private var gridItems = [GridItem(.flexible()), GridItem(.flexible())] // Define quantos items terá por linha, como um collectionView
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, viewModel: viewModel)
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

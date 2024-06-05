//
//  PokemonCell.swift
//  PokedexSwifUI
//
//  Created by Diggo Silva on 05/06/24.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    var pokemon: Pokemon
    let viewModel: PokemonViewModel
    let backgroundColor: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack {
                    Text(pokemon.type)
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay (
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 12))
        .shadow(color: backgroundColor, radius: 6, x: 0.0, y: 0.0)
    }
}

//#Preview {
//    PokemonCell(pokemon: MOCK_POKEMON[3])
//}

//
//  PokemonCell.swift
//  PokedexSwifUI
//
//  Created by Diggo Silva on 05/06/24.
//

import SwiftUI

struct PokemonCell: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("Bulbasaur")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack {
                    Text("poison")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay (
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(.green)
        .clipShape(.rect(cornerRadius: 12))
        .shadow(color: .green, radius: 6, x: 0.0, y: 0.0)
    }
}

#Preview {
    PokemonCell()
}

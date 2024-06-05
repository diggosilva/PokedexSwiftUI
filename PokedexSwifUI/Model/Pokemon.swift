//
//  Pokemon.swift
//  PokedexSwifUI
//
//  Created by Diggo Silva on 05/06/24.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

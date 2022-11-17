//
//  Podcast.swift
//  Itunes Client App
//
//  Created by Sefa İbiş on 16.11.2022.
//

import Foundation

struct Podcast: Decodable{
    let artistName: String?
    let trackName: String?
    let artworkLarge: String?
    
    enum CodingKeys: String, CodingKey {
        case artistName
        case trackName
        case artworkLarge = "artworkUrl600"
    }
}

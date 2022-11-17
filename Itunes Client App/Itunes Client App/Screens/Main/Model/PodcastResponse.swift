//
//  PodcastResponse.swift
//  Itunes Client App
//
//  Created by Sefa İbiş on 16.11.2022.
//

import Foundation

struct PodcastResponse: Decodable{
    let resultCount: Int?
    let results: [Podcast]?
}

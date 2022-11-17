//
//  ItunesAPI.swift
//  Itunes Client App
//
//  Created by Sefa İbiş on 16.11.2022.
//

import Foundation

final class ItunesAPI{
    //singleton
    static let shared = ItunesAPI()
    private let baseURL : URL = URL(string: "https://itunes.apple.com/search")!
    
    func fetchPodcast(completion: @escaping (PodcastResponse?, Error?) -> Void){
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
        let url = baseURL.appending(queryItems: [URLQueryItem(name: "term", value: "podcast")])
        let request = URLRequest(url: url)
        let dataTask = session.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }
            // print(String(data: data!, encoding: String.Encoding.utf8)!)
            guard let data = data else{
                return
            }
            let podcastResponse = try? JSONDecoder().decode(PodcastResponse.self, from: data)
            completion(podcastResponse, nil)
        }
        dataTask.resume()
    }
}

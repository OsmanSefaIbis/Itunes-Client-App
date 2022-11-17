//
//  MainViewController.swift
//  Itunes Client App
//
//  Created by Sefa İbiş on 16.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        ItunesAPI.shared.fetchPodcast(){ response, error in
            if let error = error{
                print(error)
                return
            }
            guard let response = response else{
                return
            }
            print(response)
            
        }
    }

}


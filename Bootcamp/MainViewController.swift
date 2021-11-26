//
//  MainViewController.swift
//  Bootcamp
//
//  Created by everis on 26/11/21.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchHeroes()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MainViewController {
    func fetchHeroes() {
        let urlQueries = [URLQueryItem(name: "ts", value: "1"),
                          URLQueryItem(name: "apikey", value: Constants.apiKey),
                          URLQueryItem(name: "hash", value: Constants.hash)]
        var url = URLComponents(string: Constants.baseURL + Constants.charactersPath)
        url!.queryItems = urlQueries
        
        URLSession.shared.fetch(url: url?.url,
                                expecting: SuperheroResponse.self,
                                completion: { result in
                                    switch result {
                                    case .success(let response):
                                        print(response.data.results)
                                    case .failure(let error):
                                        print(error)
                                    }
                                })
    }
}

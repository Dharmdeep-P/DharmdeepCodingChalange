//
//  CityViewModel.swift
//  DharmdeepCodingChalange
//
//  Created by Dharmdeep Poojara on 24/01/25.
//

import SwiftUI

class CityViewModel: ObservableObject  {
    @Published var cities = [CitiesModel]()
    

    func loadData()  {
        guard let url = Bundle.main.url(forResource: "au_cities", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let cities = try? JSONDecoder().decode([CitiesModel].self, from: data!)
        self.cities = cities!
    }
    
    func reverseCities() {
        cities.reverse()
    }
     
}

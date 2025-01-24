//
//  CityView.swift
//  DharmdeepCodingChalange
//
//  Created by Dharmdeep Poojara on 24/01/25.
//

import SwiftUI

struct CityView: View {
    
@StateObject private var cityViewModel = CityViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(cityViewModel.cities.indices, id: \.self) { index in
                    let city = cityViewModel.cities[index]
                    DisclosureGroup(
                        isExpanded: Binding(
                            get: { city.expandable },
                            set: { cityViewModel.cities[index].expandable = $0 }
                        ),
                        content: {
                            Text("City: \(city.city)")
                            Text("Admin Name: \(city.adminName)")
                            Text("Population: \(city.population)")
                        },
                        label: {
                            Text(city.adminName)
                        }
                    )
                }
            }
            .listStyle(InsetGroupedListStyle())
            
            .onAppear(perform: {
                cityViewModel.loadData()
            })
            .navigationTitle("Cities")
            .navigationBarItems(
                trailing: Button(action: {
                    cityViewModel.reverseCities()
                }) {
                    Text("Reverse")
                        .foregroundColor(.blue)
                }
            )
        }
    }
}

#Preview {
    CityView()
}



//
//  CityViewModelTests.swift
//  DharmdeepCodingChalangeTests
//
//  Created by Dharmdeep Poojara on 24/01/25.
//

import XCTest
@testable import DharmdeepCodingChalange

final class CityViewModelTests: XCTestCase {
    var viewModel: CityViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = CityViewModel()
        viewModel.cities = [
            CitiesModel(city: "Sydney", lat: "1", lng: "2", country: .australia, iso2: .au, adminName: "New South Wales", capital: .primary, population: "5000000", populationProper: "5000000"),
            CitiesModel(city: "Melbourne", lat: "3", lng: "4", country: .australia, iso2: .au, adminName: "Victoria", capital: .admin, population: "4000000", populationProper: "4000000")
        ]
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testReverseCities() {
        // Arrange
        let originalOrder = viewModel.cities
        
        // Act
        viewModel.reverseCities()
        
        // Assert
        XCTAssertEqual(viewModel.cities, originalOrder.reversed(), "The cities array should be reversed.")
    }
    
    func testInitialCitiesLoad() {
        // Act
        viewModel.loadData()
        
        // Assert
        XCTAssertNotNil(viewModel.cities, "Cities should not be nil after loading data.")
    }
}

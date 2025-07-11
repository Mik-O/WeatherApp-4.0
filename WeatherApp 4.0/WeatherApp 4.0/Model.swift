//
//  Model.swift
//  WeatherApp 4.0
//
//  Created by Таня Кожевникова on 11.07.2025.
//

import Foundation

struct WeatherJson: Decodable {
    let location: Location
    let current: Current

    // MARK: - Location
    struct Location: Decodable {
        let name: String
        let region: String
        let country: String
    }
    
    struct Current: Decodable {
        let temperature: Double
        let windSpeed: Double
        let pressure: Int
        
        enum CodingKeys: String, CodingKey {
            case temperature = "temp_c"
            case windSpeed = "wind_kph"
            case pressure = "pressure_mb"
        }
    }
}

struct WeatherViewModel {
    let cityName: String
    let temperature: String
}

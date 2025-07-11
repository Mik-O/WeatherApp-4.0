//
//  Model.swift
//  WeatherApp 4.0
//
//  Created by Таня Кожевникова on 11.07.2025.
//

import Foundation

class CurrentWeather {
    let location: String?
    let temperature: Double?
    let windSpeed: Double?
    let pressure: Double?
//    let condition: Condition?
    
    struct WeatherKeys {
        static let locetion = "region"
        static let temperature = "temp_c"
        static let windSpeed = "wind_kph"
        static let pressure = "pressure_mb"
        
    }
    
    init(weatherDictionary: [String : Any ]) {
        location = weatherDictionary[WeatherKeys.locetion] as? String
        temperature = weatherDictionary[WeatherKeys.temperature] as? Double
        windSpeed = weatherDictionary[WeatherKeys.windSpeed] as? Double
        pressure = weatherDictionary[WeatherKeys.pressure] as? Double
    }
}

//struct Current: Codable {
//    let lastUpdatedEpoch: Int
//    let lastUpdated: String
//    let tempC, tempF: Double
//    let isDay: Int
//    let condition: Condition
//    let windMph, windKph: Double
//    let windDegree: Int
//    let windDir: String
//    let pressureMB: Int
//    let pressureIn: Double
//    let precipMm, precipIn, humidity, cloud: Int
//    let feelslikeC, feelslikeF, windchillC, windchillF: Double
//    let heatindexC, heatindexF, dewpointC, dewpointF: Double
//    let visKM, visMiles: Int
//    let uv, gustMph, gustKph: Double
//
//    enum CodingKeys: String, CodingKey {
//        case lastUpdatedEpoch = "last_updated_epoch"
//        case lastUpdated = "last_updated"
//        case tempC = "temp_c"
//        case tempF = "temp_f"
//        case isDay = "is_day"
//        case condition
//        case windMph = "wind_mph"
//        case windKph = "wind_kph"
//        case windDegree = "wind_degree"
//        case windDir = "wind_dir"
//        case pressureMB = "pressure_mb"
//        case pressureIn = "pressure_in"
//        case precipMm = "precip_mm"
//        case precipIn = "precip_in"
//        case humidity, cloud
//        case feelslikeC = "feelslike_c"
//        case feelslikeF = "feelslike_f"
//        case windchillC = "windchill_c"
//        case windchillF = "windchill_f"
//        case heatindexC = "heatindex_c"
//        case heatindexF = "heatindex_f"
//        case dewpointC = "dewpoint_c"
//        case dewpointF = "dewpoint_f"
//        case visKM = "vis_km"
//        case visMiles = "vis_miles"
//        case uv
//        case gustMph = "gust_mph"
//        case gustKph = "gust_kph"
//    }
//}

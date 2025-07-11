//
//  ForecastService.swift
//  WeatherApp 4.0
//
//  Created by Таня Кожевникова on 11.07.2025.
//

import Foundation
import Alamofire

class ForecastService {
    //https://api.weatherapi.com/v1/current.json?key=e5d3d1af10274bc8aef142538250307&q=Novosibirsk&aqi=no
    
    let forecastBaselURL: String
    
    
    
    init() {
        forecastBaselURL = "https://api.weatherapi.com/v1/current.json?key=e5d3d1af10274bc8aef142538250307&q=Novosibirsk&aqi=no"
    }
    
    func getCurrentWeather(completion: @escaping (WeatherViewModel?) -> Void ) {
        
        if let forecastURL = URL(string: forecastBaselURL) {
            //            Alamofire.Request(forecastURL).response
            AF.request(forecastURL)
                .responseDecodable(of: WeatherJson.self) { (responseData) in
                    switch responseData.result {
                    case .success(let weatherJson):
                        let viewModel = WeatherViewModel(cityName: weatherJson.location.name, temperature: String(weatherJson.current.temperature))
                        completion(viewModel)
                    case .failure(let error):
                        print("Error: \(error)")
                        completion(nil)
                    }
                }
        }
        
        
    }
}

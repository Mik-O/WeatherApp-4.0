//
//  ViewController.swift
//  WeatherApp 4.0
//
//  Created by Таня Кожевникова on 11.07.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cityTextLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = ForecastService()
        weather.getCurrentWeather { viewModel in
            if let viewModel = viewModel {
                self.cityTextLabel.text = viewModel.cityName
                self.temperatureLabel.text = viewModel.temperature
            }
            
        }
        }
        // Do any additional setup after loading the view.
    }





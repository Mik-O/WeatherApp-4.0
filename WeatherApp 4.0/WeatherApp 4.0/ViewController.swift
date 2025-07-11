//
//  ViewController.swift
//  WeatherApp 4.0
//
//  Created by Таня Кожевникова on 11.07.2025.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet var cityTextLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var windSpeedLabel: UILabel!
    @IBOutlet var pressureLabel: UILabel!
    @IBOutlet var conditionImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = ForecastService()
        weather.getCurrentWeather { viewModel in
            if let viewModel = viewModel {
                self.cityTextLabel.text = viewModel.cityName
                self.temperatureLabel.text = viewModel.temperature
                self.windSpeedLabel.text = viewModel.windSpeed
                self.pressureLabel.text = viewModel.pressure
                self.conditionImageView.kf.setImage(with: viewModel.condition.iconUrl())
                }
            }
            
        }
    }
    // Do any additional setup after loading the view.







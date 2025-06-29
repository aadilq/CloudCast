//
//  ForecastViewController.swift
//  CloudCast
//
//  Created by Aadil on 6/23/25.
//

import UIKit

class ForecastViewController: UIViewController {
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var forecastImageView: UIImageView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fakeWeatherForecast = WeatherForecast(
            temperature: 25.0,
            date: Date(),
            weatherCode: .partlyCloudy)
        
        configure(with: fakeWeatherForecast)

    }
    private func configure(with forecast: WeatherForecast){
        forecastImageView.image = forecast.weatherCode.image
        descriptionLabel.text = forecast.weatherCode.description
        temperatureLabel.text = "\(forecast.temperature)°F"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, yyyy"
        dateLabel.text = dateFormatter.string(from: forecast.date)
        
    }
    



}

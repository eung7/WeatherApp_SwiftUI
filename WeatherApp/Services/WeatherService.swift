//
//  WeatherService.swift
//  WeatherApp
//
//  Created by 김응철 on 2022/07/03.
//

import Foundation

class WeatherService {
    func getWheater(city: String, completion: @escaping (Weather) -> Void) {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=2f94734b59ed393c884ba97fae88e446") else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            }
        }.resume()
    }
}

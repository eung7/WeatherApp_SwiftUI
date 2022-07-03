//
//  Weather.swift
//  WeatherApp
//
//  Created by 김응철 on 2022/07/03.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}

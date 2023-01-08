//
//  Resurses.swift
//  WeatherApp
//
//  Created by Oleg Popov on 08.01.2023.
//

import Foundation
import UIKit


enum Resourses {
    
    enum Colors{
        static let blueBackground = UIColor(hexString: "#204EC7")
        static let colorButton = UIColor(hexString: "#F26E11")
        static let pushedButton = UIColor(hexString: "#C65607")
        static let cellBackground = UIColor(hexString: "#E9EEFA")
      }
    
    enum Texts {
        static let welcomeTitleText = "Разрешить приложению Weather использовать данные о местоположении вашего устройства"
        static let welcomeText = "Чтобы получить более точные прогнозы погоды во время движения или путешествия"
        static let welcomeSecondText = "Вы можете изменить свой выбор в любое время из меню приложения"
        
        static let firstButtonText = "ИСПОЛЬЗОВАТЬ МЕСТОПОЛОЖЕНИЕ  УСТРОЙСТВА"
        static let secondButtonText = "НЕТ, Я БУДУ ДОБАВЛЯТЬ ЛОКАЦИИ"
    }
    
    enum Fonts {
        static let welcomeBigFont = UIFont(name: "Rubik-SemiBold", size: 16) ?? UIFont.systemFont(ofSize: 16, weight: .bold)
        static let welcomeSmallFont = UIFont(name: "Rubik-Regular", size: 14) ?? UIFont.systemFont(ofSize: 14)
        static let firstButoonFont = UIFont(name: "Rubik-Medium", size: 12) ?? UIFont.systemFont(ofSize: 12)
        static let secondButtonFont = UIFont(name: "Rubik-Regular", size: 16) ?? UIFont.systemFont(ofSize: 16)
    }
    
}

//
//  TabBarModel.swift
//  Food Delivery App
//
//  Created by Дмитрий Бессонов on 14.10.2022.
//

import Foundation
import UIKit

enum TabBarModel {
    case menu
    case contacts
    case profile
    case basket

    var title: String {
        switch self {
        case .menu:
            return "Меню"
        case .contacts:
            return "Контакты"
        case .profile:
            return "Профиль"
        case .basket:
            return "Корзина"
        }
    }

    var image: UIImage? {
        switch self {
        case .menu:
            return UIImage(named: "menu")
        case .contacts:
            return UIImage(named: "contacts")
        case .profile:
            return UIImage(named: "profile")
        case .basket:
            return UIImage(named: "basket")
        }
    }

    var selectedImage: UIImage? {
        return image
    }
    
}

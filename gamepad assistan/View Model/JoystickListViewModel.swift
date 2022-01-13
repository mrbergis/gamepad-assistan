//
//  JoystickViewModel.swift
//  gamepad assistan
//
//  Created by Андрей Адельбергис on 13.01.2022.
//

import SwiftUI

class JoystickListViewModel: ObservableObject {
    @Published var pressbuttons : [JoystickViewModel] = buttonsData.map(JoystickViewModel.init)
    
    var title: String {
        "XBox"
    }
    var imageJoystick: String {
        "controller"
    }
    
    var titleSetting: String {
        "Управление"
    }//для будущей локализации
    
}

struct JoystickViewModel {
    let pressbutton: Pressbutton
    
    var id: UUID {
        pressbutton.id
    }
    
    var title:  String {
        pressbutton.title
    }
    
    var image: String {
        pressbutton.image
    }
}

//
//  JoystickView.swift
//  gamepad assistan
//
//  Created by Андрей Адельбергис on 13.01.2022.
//

import SwiftUI

struct JoystickView: View {
    
    @ObservedObject var joystickListVM = JoystickListViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Text(joystickListVM.title)
                Image(joystickListVM.imageJoystick)
                    .resizable()
                    .scaledToFit()
                Text(joystickListVM.titleSetting)
                ForEach(joystickListVM.pressbuttons, id: \.id){ item in
                    ButtonRow(pressButton: item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        JoystickView()
    }
}

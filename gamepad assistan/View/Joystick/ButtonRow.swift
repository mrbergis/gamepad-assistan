//
//  ButtonRow.swift
//  gamepad assistan
//
//  Created by Андрей Адельбергис on 13.01.2022.
//

import SwiftUI

struct ButtonRow: View {
    var pressButton: JoystickViewModel
    
    var body: some View {
        HStack() {
            Image(systemName: pressButton.image)
            Text(pressButton.title)
            Spacer()
        }.font(.title2)
    }
}

struct ButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRow(pressButton: JoystickViewModel(pressbutton: buttonsData[0]))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  checkBoxStruct.swift
//  ZBLL Trainer
//
//  Created by Noah Westendorf on 16.12.23.
//

import Foundation
import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
            
                configuration.label
            }
            .foregroundColor(.white)
        })
    }
}

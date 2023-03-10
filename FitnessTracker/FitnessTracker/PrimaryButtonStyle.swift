//
//  ButtonStyle.swift
//  FitnessTracker
//
//  Created by shahinmadani on 2/9/23.
//

import SwiftUI
struct PrimaryButtonStyle: ButtonStyle{
    var fillColor: Color = .darkPrimaryButton
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(configuration:configuration,fillColor: fillColor)
        
    }
    struct PrimaryButton: View{
        
        let configuration: Configuration
        let fillColor : Color
        var body: some View{
            return configuration.label
                .padding(20)
                .background(
                    RoundedRectangle(
                        cornerRadius: 10.0
                    ).fill(fillColor)
                )
        }
    }
} 

struct PrimaryButtonStyle_Previews: PreviewProvider{
    static var previews: some View{
        Button(action:{}){
            Text("Create Challenge")
        }.buttonStyle(PrimaryButtonStyle())
    }
}
extension Color {
    static let darkPrimaryButton = Color(red:255/255, green: 50/255, blue:50/255, opacity: 0.7)
}

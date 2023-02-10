//
//  ContentView.swift
//  FitnessTracker
//
//  Created by shahinmadani on 2/2/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        //GeomatryReader Will give the hight of the container
        GeometryReader{ proxy in
            VStack {
                Spacer().frame(height:proxy.size.height*0.40)
                Text("FitTracker")
                    .font(.system(size: 65,
                                  weight: .medium))
                    .foregroundColor(.white)
                Spacer()
                Button(action:{}){
                    HStack(spacing: 15){
                        Spacer()
                        Image(systemName: "plus.circle").font(.system(size:25,weight: .semibold))
                            .foregroundColor(.white)
                           
                        Text("Create a Challenge").font(.system(size:24, weight:.semibold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                }.padding(.horizontal,15)
                .buttonStyle(PrimaryButtonStyle())

            }.frame(
                maxWidth: .infinity,
                    maxHeight: .infinity)
            .background(Image("coverPhoto").resizable().aspectRatio(
                contentMode:.fill)
                        
            ).overlay(Color.black.opacity(0.4))
            .frame(width: proxy.size.width)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().previewDevice("iPhone 8")
        LandingView().previewDevice("iPhone 11")
    }
}

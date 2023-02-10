//
//  ContentView.swift
//  FitnessTracker
//
//  Created by shahinmadani on 2/2/23.
//

import SwiftUI

struct LandingView: View {
    @State private var isActive = false
    var body: some View {
        NavigationView{
            //GeomatryReader Will give the hight of the container
            GeometryReader{ proxy in
                VStack {
                    Spacer().frame(height:proxy.size.height*0.40)
                    Text("FitTracker")
                        .font(.system(size: 65,
                                      weight: .medium))
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination: Text("navigated"),isActive: $isActive){
                        Button(action:{
                            isActive=true
                            
                        }){
                            HStack(spacing: 15){
                                Spacer()
                                Image(systemName:"plus.circle")
                                    .font(.system(size:25,weight: .semibold))
                                    .foregroundColor(.white)
                                
                                Text("Create a Challenge")
                                    .font(.system(size:24, weight:.semibold))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            
                        }.padding(.horizontal,15)
                            .padding(.bottom,35)
                            .buttonStyle(PrimaryButtonStyle())
                    }
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                //We used the cover picture in the Vstack
                    .background(Image("coverPhoto")
                        .resizable().aspectRatio(
                            contentMode:.fill).overlay(Color.black.opacity(0.4))
                                
                    )
                    .frame(width: proxy.size.width)
                    .edgesIgnoringSafeArea(.all)
            }
        }.accentColor(.primary)
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().previewDevice("iPhone 8")
        LandingView().previewDevice("iPhone 11")
    }
}

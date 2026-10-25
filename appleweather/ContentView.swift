//
//  ContentView.swift
//  appleweather
//
//  Created by Will Peterson on 10/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("topColor"), Color("bottomColor")],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea()
            
            ScrollView {
                
                VStack {
                    
                    HeaderView(city: "Chapel Hill",
                               temp: 70,
                               condition: "Sunny",
                               tempRange: "H:70° L:48°")
                    
                    
                    
                    HourlyForecastView()
                    
                    TenDayForecastView()
    
                }
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}

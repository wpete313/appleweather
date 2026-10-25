//
//  HourlyForecastView.swift
//  appleweather
//
//  Created by Will Peterson on 10/4/26.
//

import SwiftUI

struct HourlyForecastView: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(systemName: "clock")
                Text("HOURLY FORECAST")
            }
            .fontWeight(.semibold)
            .foregroundStyle(.white.opacity(0.8))
            
            ScrollView(.horizontal) {
                HStack(spacing: 25) {
                    HourView(time: "Now", image: "sun.max.fill", temp: "70°")
                    HourView(time: "3PM", image: "sun.max.fill", temp: "70°")
                    HourView(time: "4PM", image: "sun.max.fill", temp: "70°")
                    HourView(time: "5PM", image: "sun.max.fill", temp: "69°")
                    HourView(time: "6PM", image: "sun.max.fill", temp: "66°")
                    HourView(time: "6:27PM", image: "sunset.fill", temp: "Sunset")
                    HourView(time: "7PM", image: "moon.stars.fill", temp: "62°")
                    HourView(time: "8PM", image: "moon.stars.fill", temp: "59°")
                    HourView(time: "9PM", image: "moon.stars.fill", temp: "57°")
                    HourView(time: "10PM", image: "moon.stars.fill", temp: "55°")
                    HourView(time: "11PM", image: "moon.stars.fill", temp: "53°")
                    HourView(time: "12AM", image: "moon.stars.fill", temp: "51°")
                    HourView(time: "1AM", image: "moon.stars.fill", temp: "59°")
                    HourView(time: "2AM", image: "moon.stars.fill", temp: "48°")
                    HourView(time: "3AM", image: "moon.stars.fill", temp: "46°")
                    HourView(time: "4AM", image: "moon.stars.fill", temp: "45°")
                    HourView(time: "5AM", image: "moon.stars.fill", temp: "45°")
                    HourView(time: "6AM", image: "moon.stars.fill", temp: "44°")
                    HourView(time: "7AM", image: "moon.stars.fill", temp: "43°")
                    
                }
            }
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15)
            .fill(.blue.opacity(0.4)))
        .padding(10)
        
    }
}

struct HourView: View {
    
    let time: String
    let image: String
    let temp: String
    
    var body: some View {
        VStack(spacing: 14) {
            Text(time)
                .font(.headline)
            Image(systemName: image)
                .renderingMode(.original)
                .font(.title2)
            Text(temp)
                .font(.title3)
        }
        .fontWeight(.semibold)
        .foregroundStyle(.white)
    }
}

#Preview {
    HourlyForecastView()
}

//
//  TenDayForecastView.swift
//  appleweather
//
//  Created by Will Peterson on 10/12/26.
//

import SwiftUI

struct TenDayForecastView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(systemName: "calendar")
                Text("10-DAY FORECAST")
            }
            .fontWeight(.semibold)
            .foregroundStyle(.white.opacity(0.8))
            
            DayView(day: "Today", conditions: "sun.max.fill", low: 48, high: 70)
            DayView(day: "Mon", conditions: "sun.max.fill", low: 43, high: 71)
            DayView(day: "Tue", conditions: "sun.max.fill", low: 44, high: 74)
            DayView(day: "Wed", conditions: "cloud.fill", low: 50, high: 71)
            DayView(day: "Thu", conditions: "cloud.rain.fill", low: 55, high: 71)
            DayView(day: "Fri", conditions: "sun.max.fill", low: 51, high: 76)
            DayView(day: "Sat", conditions: "cloud.fill", low: 53, high: 71)
            DayView(day: "Sun", conditions: "cloud.rain.fill", low: 54, high: 69)
            DayView(day: "Mon", conditions: "cloud.rain.fill", low: 57, high: 70)
            DayView(day: "Tue", conditions: "cloud.rain.fill", low: 50, high: 61)
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15)
            .fill(.blue.opacity(0.4)))
        .padding(10)
    }
}

struct DayView: View {
    let day: String
    let conditions: String
    let low: Int
    let high: Int
    
    var body: some View {
        HStack {
            Text(day)
            
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.white)
                .frame(width: 60, alignment: .leading)
            Spacer()
            Image(systemName: conditions)
                .renderingMode(.original)
                .font(.title3)
            Spacer()
            Text("\(low)°")
                .font(.title3)
                .frame(width: 40)
            RoundedRectangle(cornerRadius: 8)
                .fill(Color("bottomColor"))
                .frame(width: 70, height: 5)
        
            Text("\(high)°")
                .font(.title3)
                .frame(width: 40)
        }
        .foregroundStyle(.white)
        
        
    }
}

#Preview {
    TenDayForecastView()
}

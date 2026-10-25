//
//  HeaderView.swift
//  appleweather
//
//  Created by Will Peterson on 10/6/26.
//

import SwiftUI

struct HeaderView: View {
    let city: String
    let temp: Int
    let condition: String
    let tempRange: String
    
    var body: some View {
        VStack {
            Text(city)
                .font(.system(size: 40, weight: .regular))
            
            Text(" \(temp)°")
                .font(.system(size: 90, weight: .light))
                
            Text(condition)
                .font(.system(size: 25, weight: .regular))
            
            Text(tempRange)
                .font(.system(size: 25, weight: .regular))
            
        }
        .foregroundStyle(.white)
        .shadow(radius: 5)
    }
}

#Preview {
    ContentView()
}

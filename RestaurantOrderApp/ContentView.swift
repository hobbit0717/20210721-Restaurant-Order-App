//
//  ContentView.swift
//  RestaurantOrderApp
//
//  Created by JH on 2021-07-20.
//

import SwiftUI

struct ContentView: View {
    
    @State var location = [
        "Mexico City",
        "New York City",
        "Los Angeles",
        "Toronto",
        "Chicago",
        "Houston",
        "Havana",
        "Montreal"
    ]
    
    @State var food = [
        "Sweet potato fries",
        "Nachos",
        "Grilled salmon salad",
        "Pad thai",
        "Fish tacos",
        "Turkey burger",
        "Poutine",
        "Potato leek soup"
    ]
    
    @State var time = [
        "5 pm",
        "6 pm",
        "7 pm",
        "8 pm",
        "9 pm"
    ]
    
    @State var locationSelectedIndex = 0
    @State var foodSelectedIndex = 0
    @State var timeSelectedIndex = 0
    
    var body: some View {
        
        VStack(spacing:80) {
            Text("Wow Restaurant")
                .font(.largeTitle)
                .bold()
            
            HStack {
                Picker("Location", selection: $locationSelectedIndex) {
                    ForEach (0..<location.count) { i in
                        Text(location[i])
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
                Text(location[locationSelectedIndex])
            }
            
            VStack {
                Text("Order:")
                
                Picker("Food", selection: $foodSelectedIndex) {
                    ForEach (0..<food.count) { i in
                        Text(food[i])
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
            }
            
            VStack {
                Text("Pickup time:")
                
                Picker("Time", selection: $timeSelectedIndex) {
                    ForEach (0..<time.count) { i in
                        Text(time[i])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Button ("Pick for me!"){
                
            }
            
        }
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Shared
//
//  Created by user on 12/6/22.
//

import SwiftUI

/// This app is a number counter, where the number is displayed at the center of screen. Based on the buttons the users presses, the value increases by 1, decreases by 1, or is set back to 0.
struct ContentView: View {
    // Displays a number which can increase or decrease in value.
    @State private var number = 0
    
    var body: some View {
        
        VStack{
            Spacer()
            
            // Displays current number.
            Text("\(number)")
                .font(.system(size: 70))
            HStack {
                // Button labeled Remove which decreases current number by 1.
                Button(action: {
                    number -= 1
                }, label: {
                    Text("Minus")
                })
                // Button labeled Add which increases current number by 1.
                Button(action: {
                    number += 1
                }, label: {
                    Text("Add")
                })
                Button(action: {
                    number = number * number
                }, label: {
                    Text("Square")
                })
                Button(action: {
                    number = 0
                }, label: {
                    Text("Clear")
                })
            }
            Spacer()
        }
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

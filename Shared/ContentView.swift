//
//  ContentView.swift
//  Shared
//
//  Created by user on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 0
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("\(number)")
                .font(.system(size: 70))
            HStack {
                Button(action: {
                    number -= 1
                }, label: {
                    Text("Minus")
                })
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

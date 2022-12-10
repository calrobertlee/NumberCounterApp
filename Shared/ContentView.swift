//
//  ContentView.swift
//  Shared
//
//  Created by user on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 0
    @State private var storedNum: Int = 0
    @State private var additionActive: Bool = false
    @State private var subtractionActive: Bool = false
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("\(storedNum)")
                .font(.system(size: 34, design: .rounded))
                .foregroundColor(.gray)
            Text("\(number)")
                .font(.system(size: 80, design: .rounded))
            // Buttons
            HStack {
                Button(action: {
                    storedNum = number
                    number = 0
                    subtractionActive = false
                    additionActive = true
                }, label: {
                    Text("Plus")
                })
                Button(action: {
                    storedNum = number
                    number = 0
                    additionActive = false
                    subtractionActive = true
                }, label: {
                    Text("Minus")
                })
                Button(action: {
                    if additionActive {
                        (storedNum, number) = (number,storedNum)
                        number = number + storedNum
                    }
                    if subtractionActive {
                        number = storedNum - number
                    }
                }, label: {
                    Text("Equals")
                })
            }
            HStack {
                Button(action: {
                    number = 0
                    subtractionActive = false
                    additionActive = false
                }, label: {
                    Text("Clear")
                })
                Button(action: {
                    number = 0
                    storedNum = 0
                    subtractionActive = false
                    additionActive = false
                }, label: {
                    Text("Clear All")
                })
            }.padding(.vertical, 8.0)
            Spacer()
            HStack {
                if number < 999999 {
                    // Button 0
                    Button(action: {
                        number = number * 10
                    }, label: {
                        Text("0").font(.title)
                    })
                    // Button 1
                    Button(action: {
                        number = number * 10 + 1
                    }, label: {
                        Text("1").font(.title)
                    })
                    // Button 2
                    Button(action: {
                        number = number * 10 + 2
                    }, label: {
                        Text("2").font(.title)
                    })
                    // Button 3
                    Button(action: {
                        number = number * 10 + 3
                    }, label: {
                        Text("3").font(.title)
                    })
                }
            }
        }
    }
}


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

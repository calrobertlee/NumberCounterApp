//
//  ContentView.swift
//  Shared
//
//  Created by user on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var number = 0
    @State private var secretNum: Int = 0
    @State private var additionActive: Bool = false
    @State private var subtractionActive: Bool = false
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("\(secretNum)")
                .font(.system(size: 34, design: .rounded))
                .foregroundColor(.gray)
            Text("\(number)")
                .font(.system(size: 70, design: .rounded))
            // Buttons
            HStack {
                Button(action: {
                    secretNum = number
                    number = 0
                    subtractionActive = false
                    additionActive = true
                }, label: {
                    Text("Plus")
                })
                Button(action: {
                    secretNum = number
                    number = 0
                    additionActive = false
                    subtractionActive = true
                }, label: {
                    Text("Minus")
                })
                Button(action: {
                    if additionActive {
                        number = number + secretNum
                    }
                    if subtractionActive {
                        number = secretNum - number
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
                    secretNum = 0
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
                } else {
                    Text("0").font(.title).foregroundColor(.gray)
                    Text("1").font(.title).foregroundColor(.gray)
                    Text("2").font(.title).foregroundColor(.gray)
                    Text("3").font(.title).foregroundColor(.gray)

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

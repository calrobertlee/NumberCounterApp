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
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("\(secretNum)").font(.system(size: 34))
            Text("\(number)").font(.system(size: 70))
            // Buttons
            HStack {
                Button(action: {
                    secretNum = number
                    number = 0
                }, label: {
                    Text("Add")
                })
                Button(action: {
                    number = number + secretNum
                }, label: {
                    Text("Equals")
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

//
//  ContentView.swift
//  Shared
//
//  Created by user on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var entry: Int = 0
    @State var operand: Int = 0
    @State var secondOperand: Int = 0
    @State var store: Bool = true

    
    var body: some View {
        
        VStack {
//            Text("\(secondOperand)")
//                .font(.largeTitle).foregroundColor(.black)
//            Text("\(operand)")
//                .font(.largeTitle).foregroundColor(.red)
            Text("\(entry)")
                .font(.system(size: 60))
                .foregroundColor(.black)
                .padding()
            
            // Input buttons 0-9.
            HStack {
                Button(action: { entry = entry * 10 },
                       label: { Text("0").font(.title) })
                Button(action: { entry = entry * 10 + 1 },
                       label: { Text("1").font(.title) })
                Button(action: { entry = entry * 10 + 2 },
                       label: { Text("2").font(.title) })
                Button(action: { entry = entry * 10 + 3 },
                       label: { Text("3").font(.title) })
                Button(action: { entry = entry * 10 + 4 },
                       label: { Text("4").font(.title) })
                Button(action: { entry = entry * 10 + 5 },
                       label: { Text("5").font(.title) })
                Button(action: { entry = entry * 10 + 6 },
                       label: { Text("6").font(.title) })
                Button(action: { entry = entry * 10 + 7 },
                       label: { Text("7").font(.title) })
                Button(action: { entry = entry * 10 + 8 },
                       label: { Text("8").font(.title) })
                Button(action: { entry = entry * 10 + 9 },
                       label: { Text("9").font(.title) })
            }
            
            // Operation buttons.
            VStack {
                // Addition button. NOTE: Add bold later.
                Button(action: {
                    operand = entry
                    entry = 0 // NOTE: update feature later.
                }, label: {
                    Text("Addition").font(.title3)
                }).padding(.vertical, 2.0)
                // Calculate button.
                Button(action: {
                    if store {
                        secondOperand = entry
                        entry = secondOperand + operand
                        store = false
                    } else {
                        entry = entry + secondOperand
                    }
                }, label: {
                    Text("Calculate").font(.title3)
                }).padding(.vertical, 2.0)
                // Reset button.
                Button(action: {
                    (entry, operand, secondOperand) = (0,0,0)
                    store = true
                }, label: {
                    Text("Reset").font(.title3)
                }).padding(.vertical, 2.0)
            }.padding()
        }
    }
}



// Entry number
// Operand number
// Solution



























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

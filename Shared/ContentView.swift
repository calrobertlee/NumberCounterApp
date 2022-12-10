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
            Text("\(secondOperand)").font(.largeTitle).foregroundColor(.black)
            Text("\(operand)").font(.largeTitle).foregroundColor(.red)
            Text("\(entry)").font(.largeTitle).foregroundColor(.blue).padding()
            
            VStack {
                Button(action: {
                    entry = 10
                }, label: {
                    Text("input 10").font(.title3)
                })
                Button(action: {
                    entry = 2
                }, label: {
                    Text("input 2").font(.title3)
                })
                Button(action: {
                    operand = entry
                }, label: {
                    Text("Addition").font(.title3)
                })
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
                })
                Button(action: {
                    (entry, operand, secondOperand) = (0,0,0)
                    store = true
                }, label: {
                    Text("Reset").font(.title3)
                })
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

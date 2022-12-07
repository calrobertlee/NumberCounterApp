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
                    self.number -= 1
                }, label: {
                    Text("Remove")
                        
                })
                Button(action: {
                    self.number += 1
                }, label: {
                    Text("Add")
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

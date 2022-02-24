//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var btnLbl = "Button"
    @State var btnLbl1 = "Button1"
    var body: some View {
        VStack {
            TextView()
            VStack(alignment: .leading) {
                Text("Hello, world!")
                    .font(.title)
                    .foregroundColor(Color.green)
                Text("Hello, world!")
                Button(action: {
                    btnLbl = "Hello, world!!!!"
                }, label: {
                    Text(btnLbl)
                })
            }
            .padding()
            VStack(alignment: .trailing) {
                Text("Hello, world!")
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
                Text("Hello, world!")
                Button(action: {
                    btnLbl1 = "Hello, world!!!!"
                }, label: {
                    Text(btnLbl1)
                })
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

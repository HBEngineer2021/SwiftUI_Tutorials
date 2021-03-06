//
//  TextView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/23.
//

import SwiftUI

struct TextView: View {
    
    @State var btnLbl = "Button"
    @State var btnLbl1 = "Button1"
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Hello, world!")
                    .font(.title)
                    .foregroundColor(Color.red)
                Text("Hello, world!")
                Button(action: {
                    btnLbl = "Hello, world!!!!"
                }, label: {
                    Text(btnLbl)
                })
            }
            .padding()
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}

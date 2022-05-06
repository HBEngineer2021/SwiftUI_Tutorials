//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            //ListView()
            CategoryView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

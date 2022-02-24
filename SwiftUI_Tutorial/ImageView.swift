//
//  ImageView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("umamusume_oguri")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle()
                .stroke(Color.white, lineWidth: 4)
                .shadow(radius: 3))
            Text("オグリキャップ")
                .font(.title3)
                .fontWeight(.regular)
                .underline()
        }
        .padding(.init(top: 50, leading: 50, bottom: 50, trailing: 50))
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

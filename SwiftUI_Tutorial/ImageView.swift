//
//  ImageView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/24.
//

import SwiftUI

struct ImageView: View {
    
    var model = [UmamusumeModel]()
    
    var body: some View {
        VStack {
            ForEach(model.startIndex ..< model.endIndex) { num in
                Image(model[num].imageName)
                    .resizable()
                    .scaledToFill()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(Circle()
                                .stroke(Color.white, lineWidth: 4)
                                .shadow(radius: 3))
                Text(model[num].name)
                    .font(.title3)
                    .fontWeight(.regular)
                    .underline()
            }
        }
        .padding(.init(top: 50, leading: 50, bottom: 50, trailing: 50))
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(model: [UmamusumeModel(name: "オグリキャップ", imageName: "umamusume_oguri")])
    }
}

//
//  RacecourseCard.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/03/06.
//

import SwiftUI

struct RacecourseCard: View {
    
    /// レース場の画像名
    /*var racecourse = [RacecourseModel(name: "東京競馬場", imageName: "tokyo_racecourse"),
                      RacecourseModel(name: "中山競馬場", imageName: "nakayama_racecourse"),
                      RacecourseModel(name: "京都競馬場", imageName: "kyoto_racecourse")]*/
    
    var racecourse = [RacecourseModel]()
    
    var body: some View {
        ForEach(racecourse.startIndex ..< racecourse.endIndex) { i in
            Image(racecourse[i].imageName)
                .resizable()
                .aspectRatio(5 / 2, contentMode: .fit)
                .overlay(TextOverlay(racecourse: racecourse))
        }
    }
}

struct TextOverlay: View {
    
    var racecourse = [RacecourseModel]()
    
    var gradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: [.white.opacity(0.6), .white.opacity(0)]), startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                ForEach(racecourse.startIndex ..< racecourse.endIndex) { i in
                    Text(racecourse[i].name)
                }
            }
        }
    }
}

struct RacecourseCard_Previews: PreviewProvider {
    static var previews: some View {
        RacecourseCard(racecourse: [RacecourseModel(name: "東京競馬場", imageName: "tokyo_racecourse"),
        RacecourseModel(name: "中山競馬場", imageName: "nakayama_racecourse"),
        RacecourseModel(name: "京都競馬場", imageName: "kyoto_racecourse")])
    }
}

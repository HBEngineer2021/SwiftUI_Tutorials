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
            PageView(pages: [RacecourseCard(racecourse: [
                RacecourseModel(name: "東京競馬場", imageName: "tokyo_racecourse")
            ]),RacecourseCard(racecourse: [
                RacecourseModel(name: "中山競馬場", imageName: "nakayama_racecourse")
            ]),RacecourseCard(racecourse: [
                RacecourseModel(name: "京都競馬場", imageName: "kyoto_racecourse")
            ])]).aspectRatio(5 / 2, contentMode: .fit)
            CategoryView()
            ListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

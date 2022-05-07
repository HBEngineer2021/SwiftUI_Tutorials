//
//  PageView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/03/06.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages = [Page]()
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: [RacecourseCard(racecourse: [
            RacecourseModel(name: "東京競馬場", imageName: "tokyo_racecourse")
        ]),RacecourseCard(racecourse: [
            RacecourseModel(name: "中山競馬場", imageName: "nakayama_racecourse")
        ]),RacecourseCard(racecourse: [
            RacecourseModel(name: "京都競馬場", imageName: "kyoto_racecourse")
        ])]).aspectRatio(5 / 2, contentMode: .fit)
    }
}

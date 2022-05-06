//
//  ListView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/26.
//

import SwiftUI

struct ListView: View {
    
    var model = [UmamusumeModel(name: "オグリキャップ",imageName: "umamusume_oguri"),
                 UmamusumeModel(name: "オグリ", imageName: "umamusume_oguri_run"),
                 UmamusumeModel(name: "オグリちゃん", imageName: "umamusume_oguri_cute")]
    
    var body: some View {
        NavigationView {
            List(model.startIndex ..< model.endIndex) { i in
                NavigationLink(
                    destination: ImageView(model: [model[i]]),
                    label: {
                        ListRow(model: [model[i]])
                    })
            }.navigationTitle("推しのウマ娘")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

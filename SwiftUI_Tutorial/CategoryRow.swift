//
//  CategoryRow.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/03/03.
//

import SwiftUI

struct CategoryRow: View {
    
    var model = [UmamusumeModel(name: "オグリキャップ",imageName: "umamusume_oguri"),
                 UmamusumeModel(name: "オグリ", imageName: "umamusume_oguri_run"),
                 UmamusumeModel(name: "オグリちゃん", imageName: "umamusume_oguri_cute")]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(model.startIndex ..< model.endIndex) { i in
                        ImageView(model: [model[i]])
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}

//
//  ListView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/26.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRow(model: [UmamusumeModel(name: "オグリキャップ",imageName: "umamusume_oguri")])
            ListRow(model: [UmamusumeModel(name: "オグリ", imageName: "umamusume_oguri_run")])
            ListRow(model: [UmamusumeModel(name: "オグリちゃん", imageName: "umamusume_oguri_cute")])
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

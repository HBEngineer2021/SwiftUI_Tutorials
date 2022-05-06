//
//  ListRow.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/26.
//

import SwiftUI

struct ListRow: View {
    
    var model = [UmamusumeModel]()
    
    var body: some View {
        HStack {
            ForEach(model.startIndex ..< model.endIndex) { num in
                Image(model[num].imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)
                Text(model[num].name)
                Spacer()
            }
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(model: [UmamusumeModel(name: "オグリキャップ",imageName: "umamusume_oguri")])
    }
}

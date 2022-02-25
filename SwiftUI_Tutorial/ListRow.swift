//
//  ListRow.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/02/26.
//

import SwiftUI

struct ListRow: View {
    
    var model = [UmamusumeModel(name: "オグリキャップ", imageName: "umamusume_oguri")]
    
    var body: some View {
        HStack {
            Image(model[0].imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
            Text(model[0].name)
            Spacer()
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow()
    }
}

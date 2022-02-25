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
            ListRow()
            ListRow()
            ListRow()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

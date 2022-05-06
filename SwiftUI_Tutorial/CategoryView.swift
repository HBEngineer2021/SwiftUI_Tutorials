//
//  CategoryView.swift
//  SwiftUI_Tutorial
//
//  Created by Motoki Onayama on 2022/03/03.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationView {
            CategoryRow()
                .navigationTitle("推し娘")
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}

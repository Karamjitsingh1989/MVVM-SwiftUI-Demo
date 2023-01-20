//
//  HomeView.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Home View").font(.largeTitle)
        }.background(.red)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

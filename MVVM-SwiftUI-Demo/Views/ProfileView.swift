//
//  ProfileView.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile View").font(.largeTitle)
        }.background(.blue)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

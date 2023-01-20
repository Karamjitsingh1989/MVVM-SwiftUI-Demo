//
//  HomeTabView.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import SwiftUI

struct HomeTabView: View {
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Text("Home")
                Image(systemName: "house")
            }.tag(0)
            
            SearchView().tabItem {
                Text("Home")
                Image(systemName: "magnifyingglass")
            }.tag(1)
            
            DocumentView().tabItem {
                Text("Home")
                Image(systemName: "pencil")
            }.tag(2)
            
            
            ProfileView().tabItem {
                Text("Profile")
                Image(systemName: "message")
            }.tag(3)
            
        }.accentColor(.black)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}

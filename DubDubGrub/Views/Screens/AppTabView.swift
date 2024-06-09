//
//  AppTabView.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/5/24.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map",systemImage:"map")
                }
            LocationListView()
                .tabItem {
                    Label("Locations",systemImage:"building")
                }
            NavigationStack{
                ProfileView()
                }
             .tabItem {
                Label("Profile",systemImage:"person")

                }
        }
        .accentColor(.black)
    }
}

#Preview {
    AppTabView()
}

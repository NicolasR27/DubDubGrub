//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/5/24.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { item in
                    NavigationLink(destination:LocationDetailView()){
                        locationCell()
                    }

                }
                .navigationTitle("Grub Spots")
            }

        }

    }

}

#Preview {
    LocationListView()
}

struct AvatarView: View {

    var size: CGFloat

    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size,height: size)
            .clipShape(Circle())
    }
}

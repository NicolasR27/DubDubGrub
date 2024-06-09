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
                        LocationCell()
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


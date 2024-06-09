//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/5/24.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.33156, longitude: -121.891054),
                                                   span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion:$region).ignoresSafeArea()
            
            VStack {
                LogoView()
                    .shadow(radius: 10)

                Spacer()
            }
            
        }
    }
}

#Preview {
    LocationMapView()
}

struct LogoView: View {
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(width: 70)

    }
}

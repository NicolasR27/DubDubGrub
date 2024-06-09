//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/6/24.
//

import SwiftUI

struct LocationCell: View {

        var body: some View {

            HStack {
                Image("default-square-asset")
                    .resizable()
                    .scaledToFit()
                    .frame(width:80,height: 80)
                    .clipShape(Circle())
                    .padding(.vertical,8)

                VStack(alignment:.leading) {
                    Text("Test Location Name")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .lineLimit(1)

                    HStack {
                        AvatarView(size: 35)
                        AvatarView(size: 35)
                        AvatarView(size: 35)
                        AvatarView(size: 35)

                    }

                }
                .padding(.leading)
            }
        }
    }

#Preview {
    LocationCell()
}

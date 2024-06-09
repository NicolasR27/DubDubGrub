//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/6/24.
//

import SwiftUI

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

#Preview {
    AvatarView(size: 90)
}

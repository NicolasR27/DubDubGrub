//
//  CustomModifier.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/6/24.
//

import SwiftUI

struct ProfileNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32,weight:.bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)

    }
}

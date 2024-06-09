//
//  DDGButton.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/6/24.
//

import SwiftUI

struct DDGButton: View {

    var title: String

    var body: some View {
        Text(title)
            .bold()
            .frame(width:280,height:44)
            .background(Color.mint)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

//#Preview {
//    DDGButton("TestButton")
//}

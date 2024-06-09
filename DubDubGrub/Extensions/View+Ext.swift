//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/6/24.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}

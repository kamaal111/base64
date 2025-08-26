//
//  View+extensions.swift
//  Base64App
//
//  Created by Kamaal M Farah on 8/26/25.
//

import SwiftUI

extension View {
    @ViewBuilder
    func applyIf(_ condition: Bool, transformation: (_ view: Self) -> some View) -> some View {
        if condition { transformation(self) } else { self }
    }
}

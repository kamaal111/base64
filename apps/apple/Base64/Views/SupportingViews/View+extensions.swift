//
//  View+extensions.swift
//  Base64
//
//  Created by Kamaal M Farah on 3/30/25.
//

import SwiftUI

extension View {
    @ViewBuilder
    func applyIf(_ condition: Bool, transformation: (_ view: Self) -> some View) -> some View {
        if condition { transformation(self) } else { self }
    }
}

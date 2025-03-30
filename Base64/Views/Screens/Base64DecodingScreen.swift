//
//  Base64DecodingScreen.swift
//  Base64
//
//  Created by Kamaal M Farah on 3/30/25.
//

import SwiftUI

private enum EditorFields {
    case base64
    case decoded
}

struct Base64DecodingScreen: View {
    @State private var base64 = ""
    @State private var decoded = ""

    @FocusState private var focusedField: EditorFields?

    var body: some View {
        VStack(alignment: .leading) {
            Base64Editor(text: $base64, localizedTitle: "Base64")
                .focused($focusedField, equals: .base64)
            Divider()
            Base64Editor(text: $decoded, localizedTitle: "Decoded")
                .focused($focusedField, equals: .decoded)
        }
        .padding()
    }
}

#Preview {
    Base64DecodingScreen()
}

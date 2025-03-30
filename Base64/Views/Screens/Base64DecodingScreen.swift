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
    @State private var live = true

    @FocusState private var focusedField: EditorFields?

    var body: some View {
        VStack {
            HStack {
                ActionButton(localizedLabel: "Decode", action: onDecode)
                    .disabled(live)
                ActionButton(localizedLabel: "Encode", action: onEncode)
                    .disabled(live)
                Spacer()
                Toggle(isOn: $live) {
                    Text("Live")
                }
            }
            Base64Editor(text: $base64, localizedTitle: "Base64")
                .focused($focusedField, equals: .base64)
            Divider()
            Base64Editor(text: $decoded, localizedTitle: "Decoded")
                .focused($focusedField, equals: .decoded)
        }
        .padding()
        .onChange(of: base64, handleBase64Change)
        .onChange(of: decoded, handleDecodedChange)
    }

    private func decode() { }

    private func encode() { }

    private func onDecode() {
        assert(!live)
        decode()
    }

    private func onEncode() {
        assert(!live)
        encode()
    }

    private func handleBase64Change(_ oldValue: String, newValue: String) {
        guard focusedField == .base64 else { return }
        guard live else { return }

        decode()
    }

    private func handleDecodedChange(_ oldValue: String, newValue: String) {
        guard focusedField == .decoded else { return }
        guard live else { return }

        encode()
    }
}

#Preview {
    Base64DecodingScreen()
}

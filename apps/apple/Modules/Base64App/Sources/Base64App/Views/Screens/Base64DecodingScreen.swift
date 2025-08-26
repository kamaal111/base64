//
//  Base64DecodingScreen.swift
//  Base64App
//
//  Created by Kamaal M Farah on 8/26/25.
//

import SwiftUI
import KamaalUI
import KamaalExtensions

private enum EditorFields {
    case base64
    case decoded
}

struct Base64DecodingScreen: View {
    @State private var base64 = ""
    @State private var decoded = ""
    @State private var base64IsInvalid = false
    @State private var live = true

    @FocusState private var focusedField: EditorFields?

    var body: some View {
        VStack {
            HStack {
                ActionButton(localizedLabel: "Encode", action: onEncode)
                    .disabled(live)
                ActionButton(localizedLabel: "Decode", action: onDecode)
                    .disabled(live)
                Spacer()
                VStack {
                    #if os(iOS)
                    Text("Live")
                        .bold()
                    #endif
                    Toggle(isOn: $live) {
                        Text("Live")
                    }
                }
                #if os(iOS)
                .labelsHidden()
                #endif
            }
            Base64Editor(text: $decoded, localizedTitle: "Decoded", textColor: base64IsInvalid ? .red : nil)
                .focused($focusedField, equals: .decoded)
            Divider()
            Base64Editor(text: $base64, localizedTitle: "Base64")
                .focused($focusedField, equals: .base64)
        }
        .padding()
        .onChange(of: base64, handleBase64Change)
        .onChange(of: decoded, handleDecodedChange)
        .onAppear(perform: handleOnAppear)
    }

    private var trimmedBase64: String {
        base64.trimmingByWhitespacesAndNewLines
    }

    private func declareBase64AsInvalid() {
        base64IsInvalid = true
        decoded = NSLocalizedString("Invalid base64", comment: "")
    }

    private func decode() {
        guard let decoded = Base64Utils.decode(from: trimmedBase64) else {
            declareBase64AsInvalid()
            return
        }

        if base64IsInvalid {
            base64IsInvalid = false
        }

        self.decoded = decoded
    }

    private func encode() {
        let encoded = Base64Utils.encode(from: decoded)
        self.base64 = encoded
    }

    private func onDecode() {
        assert(!live)
        decode()
    }

    private func onEncode() {
        assert(!live)
        encode()
    }

    private func handleOnAppear() {
        focusedField = .decoded
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

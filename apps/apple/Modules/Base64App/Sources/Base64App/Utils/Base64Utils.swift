//
//  Base64Utils.swift
//  Base64App
//
//  Created by Kamaal M Farah on 8/26/25.
//

import Foundation

struct Base64Utils {
    private init() { }

    static func decode(from text: String) -> String? {
        guard let data = Data(base64Encoded: text) else { return nil }

        return String(data: data, encoding: .utf8)
    }

    static func encode(from text: String) -> String {
        let data = Data(text.utf8)

        return data.base64EncodedString()
    }
}

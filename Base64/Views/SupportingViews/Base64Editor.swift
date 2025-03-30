//
//  Base64Editor.swift
//  Base64
//
//  Created by Kamaal M Farah on 3/30/25.
//

import SwiftUI

struct Base64Editor: View {
    @FocusState private var focused: Bool

    @Binding var text: String

    let title: String
    let textColor: Color?

    init(text: Binding<String>, title: String, textColor: Color? = nil) {
        self._text = text
        self.title = title
        self.textColor = textColor
    }

    init(
        text: Binding<String>,
        localizedTitle: LocalizedStringResource,
        localizedTitleComment: String = "",
        bundle: Bundle = .main,
        textColor: Color? = nil
    ) {
        let title = NSLocalizedString(localizedTitle.key, bundle: bundle, comment: localizedTitleComment)
        self.init(text: text, title: title, textColor: textColor)
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            TextEditor(text: $text)
                .focused($focused)
                .foregroundStyle(textColor ?? .primary)
        }
    }
}

#Preview {
    Base64Editor(text: .constant(""), title: "Base64")
}

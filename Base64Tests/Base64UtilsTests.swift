//
//  Base64UtilsTests.swift
//  Base64Tests
//
//  Created by Kamaal M Farah on 3/30/25.
//

import Testing
@testable import Base64

struct Base64UtilsTests {
    @Test func encode() async throws {
        #expect(Base64Utils.encode(from: "Kamaal") == "S2FtYWFs")
    }

    @Test func decode() async throws {
        #expect(Base64Utils.decode(from: "S2FtYWFs") == "Kamaal")
    }

    @Test func decodeEmpty() async throws {
        #expect(Base64Utils.decode(from: "") == "")
    }
}

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DummySpeechPackage",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        // CASE 2: 3 products, one per binary variant
        .library(name: "DummySpeech", targets: ["DummySpeechStandard"]),
        .library(name: "DummySpeechMacOnly", targets: ["DummySpeechMacOnly"]),
        .library(name: "DummySpeechEmbedded", targets: ["DummySpeechEmbedded"]),
    ],
    targets: [
        // 3 binary targets pointing to 3 different XCFrameworks
        .binaryTarget(
            name: "DummySpeechStandard",
            url: "https://github.com/emilyjiji/dummy-speech-xcframeworks/releases/download/v1.0.0/DummySpeechStandard.xcframework.zip",
            checksum: "5b984490e7b84ff92de9e11d09636b7a9ed607bcd3f727dbdce5d40c1f3fadf4"
        ),
        .binaryTarget(
            name: "DummySpeechMacOnly",
            url: "https://github.com/emilyjiji/dummy-speech-xcframeworks/releases/download/v1.0.0/DummySpeechMacOnly.xcframework.zip",
            checksum: "976fc1fee67483433abd8135bd67424fef1fab271d90a126457e6dcf1a6c4c5f"
        ),
        .binaryTarget(
            name: "DummySpeechEmbedded",
            url: "https://github.com/emilyjiji/dummy-speech-xcframeworks/releases/download/v1.0.0/DummySpeechEmbedded.xcframework.zip",
            checksum: "fa5cf15c5e030e0519535608389b0b26ec4c7a7260deb04957f596c2a4aa9659"
        )
    ]
)

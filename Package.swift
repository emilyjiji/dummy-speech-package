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
        // iOS + macOS + Mac Catalyst (MicrosoftCognitiveServicesSpeech-XCFramework-1.48.1.zip)
        .binaryTarget(
            name: "DummySpeechStandard",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.48.1/MicrosoftCognitiveServicesSpeech-XCFramework-1.48.1.zip",
            checksum: "ac702611b2cdf0192c30c929fb6235e51c54354135708632d9dd80622b5ae277"
        ),
        // macOS-only (MicrosoftCognitiveServicesSpeech-MacOSXCFramework-1.48.1.zip)
        .binaryTarget(
            name: "DummySpeechMacOnly",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.48.1/MicrosoftCognitiveServicesSpeech-MacOSXCFramework-1.48.1.zip",
            checksum: "99d15266d1a46516035dda845a93830c7f4e89182378629a9c0325f9e01c759c"
        ),
        // Embedded speech (MicrosoftCognitiveServicesSpeech-EmbeddedXCFramework-1.48.1.zip)
        .binaryTarget(
            name: "DummySpeechEmbedded",
            url: "https://csspeechstorage.blob.core.windows.net/drop/1.48.1/MicrosoftCognitiveServicesSpeech-EmbeddedXCFramework-1.48.1.zip",
            checksum: "2aecf2e4505e9cb5962354fcbd1ae3669361bfa93d58b11a997683c56711df83"
        ),
    ]
)

// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "CodeAPI",
    products: [
        .library(name: "CodeAPI", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🐘 Non-blocking, event-driven Swift client for PostgreSQL.
        .package(url: "https://github.com/vapor/postgresql.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["PostgreSQL", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)


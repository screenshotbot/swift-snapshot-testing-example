// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "test-app",
    platforms: [
        .iOS(.v15),
        .macOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "TestApp",
            targets: ["TestApp"]
        )
    ],
    dependencies: [
      .package(
        url: "https://github.com/pointfreeco/swift-snapshot-testing",
        from: "1.12.0"
      ),
    ],
    targets: [
        .target(
            name: "TestApp",
            dependencies: [
            ],
            path: "TestApp"
        ),
        .testTarget(
            name: "TestAppTests",
            dependencies: [
                "TestApp"
            ],
            path: "TestAppTests"
        ),
    ]
)

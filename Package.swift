// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DashCrypto",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "DashCrypto",
             targets: ["BlsKit", "X11Kit"])
  ],
  dependencies: [
    .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.54.3"),
  ],
  targets: [
    .target(
        name: "BlsKit",
        dependencies: ["libbls"],
        publicHeadersPath: "include"
    ),
    .binaryTarget(
       name: "libbls",
       path: "./libbls.xcframework.zip"
    ),
    .target(
        name: "X11Kit",
        dependencies: ["X11_implementation"]
    ),
    .target(
        name: "X11_implementation",
        dependencies: [],
        path: "Sources/X11implementation",
        publicHeadersPath: "include"
    ),
    .testTarget(
        name: "BlsKitTests",
        dependencies: ["BlsKit"]
    ),
    .testTarget(
        name: "X11KitTests",
        dependencies: ["X11Kit"]
    )
  ],
  cLanguageStandard: .c99,
  cxxLanguageStandard: .cxx14
)

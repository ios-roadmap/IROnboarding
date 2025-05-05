// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// Package.swift (local package)
let package = Package(
    name: "IROnboarding",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "IROnboarding",
            targets: ["IROnboarding"]
        ),
    ],
    targets: [
        .target(
            name: "IROnboarding",
            dependencies: []
        )
    ]
)


// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dependencies: [Package.Dependency] = {
    [
        .package(
            url: "https://github.com/apple/swift-system",
            from: "1.7.2",
        ),

    ]
}()

let termiosDependencies: [Target.Dependency] = {
    var dependencies = [
        "CTermios",
    ] as [Target.Dependency]
#if !canImport(System)
    dependencies.append(
        .product(
            name: "SystemPackage",
            package: "swift-system",
        ),
    )
#endif // !canImport(System)
    return dependencies
}()

let swiftSettings: [SwiftSetting] = [
    .defaultIsolation(nil),
    .strictMemorySafety(),
    .enableUpcomingFeature("ExistentialAny"),
    .enableUpcomingFeature("ImmutableWeakCaptures"),
    .enableUpcomingFeature("InferIsolatedConformances"),
    .enableUpcomingFeature("InternalImportsByDefault"),
    .enableUpcomingFeature("MemberImportVisibility"),
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
]

let package: Package = .init(
    name: "swift-termios",
    platforms: [
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "swift-termios",
            targets: ["Termios"]
        ),
    ],
    dependencies: dependencies,
    targets: [
        .systemLibrary(
            name: "CTermios",
        ),
        .target(
            name: "Termios",
            dependencies: termiosDependencies,
            swiftSettings: swiftSettings,
        ),
        .testTarget(
            name: "TermiosTests",
            dependencies: ["Termios"],
            swiftSettings: swiftSettings,
        ),
    ],
    swiftLanguageModes: [.v6],
)

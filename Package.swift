// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PurchaseConnector",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PurchaseConnector",
            targets: ["MyLibrary", "SomeRemoteBinaryPackage", "SomeLocalBinaryPackage"])
    ],
    dependencies: [
        "AppsFlyerFramework"
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PurchaseConnector"
        ),
        .binaryTarget(
            name: "PurchaseConnector",
            url: "https://github.com/af-obodovskyi/appsflyer-apple-purchase-connector/releases/download/1.2.8/purchase-connector-dynamic.xcframework.zip",
            checksum: "ac2795787e346a2cfc07b58732afe0acac104638bf5d90f4d129720bbf157b97"
        )
    ]
)

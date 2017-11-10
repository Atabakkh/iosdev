import PackageDescription

let package = Package(
    name: "iosdev",
    targets: [
      Target(name: "cli", dependencies: ["iosDev"])
    ]
)

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterTypeScript",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterTypeScript", targets: ["TreeSitterTypeScript"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterTypeScript",
                path: ".",
                exclude: [
					"appveyor.yml",
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
					"common/corpus",
					"common/define-grammar.js",
                    "examples",
                    "LICENSE",
                    "package.json",
                    "README.md",
					"tsx",
					"typescript/corpus",
					"typescript/grammar.js",
					"typescript/package.json",
                    "typescript/src/grammar.json",
                    "typescript/src/node-types.json",
                ],
                sources: [
                    "typescript/src/parser.c",
                    "typescript/src/scanner.c",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("typescript/src")])
    ]
)
// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "DistractionTimer",
	platforms: [
		.iOS(.v17),
		.macOS(.v14)
	],
	products: [
		.library(
			name: "AppFeature",
			targets: ["AppFeature"]
		),
		.library(
			name: "Model",
			targets: ["Model"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", from: "1.17.0"),
	],
	targets: [
		.target(
			name: "AppFeature",
			dependencies: [
				.product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
				"Model",
			]
		),
		.testTarget(
			name: "AppFeatureTests",
			dependencies: ["AppFeature"]
		),
		.target(
			name: "Model",
			resources: [
				.process("Model.xcdatamodeld")
			]
		),
	]
)

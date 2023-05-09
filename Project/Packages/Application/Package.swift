// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "Application",
	platforms: [.watchOS(.v9)],
	products: [
		.library(
			name: "Application",
			targets: ["Application"]),
	],
	dependencies: [
		.package(path: "../Shared"),
		.package(path: "../SharedUI"),
		.package(path: "../Networking"),
		.package(url: "https://github.com/EmilioPelaez/HierarchyResponder", from: .init(1, 0, 0)),
	],
	targets: [
		.target(
			name: "Application",
			dependencies: [
				"Shared",
				"SharedUI",
				"Networking",
				"HierarchyResponder",
			]),
		.testTarget(
			name: "ApplicationTests",
			dependencies: ["Application"]),
	]
)

//
//  install.swift
//

import Foundation

let templateNames = ["Module.xctemplate"]
let homeDirURL = FileManager.default.homeDirectoryForCurrentUser
let rootFileURL = homeDirURL.appendingPathComponent("Library").appendingPathComponent("Developer").appendingPathComponent("Xcode").appendingPathComponent("Templates").appendingPathComponent("File Templates")

enum InstallError: Error {
    case sourceDirectoryDoesNotExist(URL)
    case sourceTemplateDoesNotExist(URL)
}

func printErrorInConsole(_ message:Any){
    print("====================================")
    print("\(message)")
    print("====================================")
}

func moveTemplates() {
    let fileManager = FileManager.default
    let currentURL = URL(fileURLWithPath: fileManager.currentDirectoryPath)
    print("Attempting to install templates from \(currentURL.path)")

	let viperDirectoryName = "VIPER"

    // Install iOS templates
    do {
        let subdirectoryName = "iOS"
        let sourceURL = currentURL.appendingPathComponent(subdirectoryName)
        let destinationURL = rootFileURL.appendingPathComponent(subdirectoryName).appendingPathComponent(viperDirectoryName)
        let templateNames = ["Module.xctemplate"]
        print("-- iOS templates --")
        try moveTemplates(for: templateNames, at: sourceURL, to: destinationURL)
    }
    catch let error {
        printErrorInConsole("❌  Ooops! Something went wrong installing iOS templates 😡 : \(error)")
        exit(1)
    }

    // Install MacOSX templates
    do {
        let subdirectoryName = "MacOSX"
        let sourceURL = currentURL.appendingPathComponent(subdirectoryName)
        let destinationURL = rootFileURL.appendingPathComponent(subdirectoryName).appendingPathComponent(viperDirectoryName)
        let templateNames = ["Module.xctemplate"]
        print("-- MacOSX templates --")
        try moveTemplates(for: templateNames, at: sourceURL, to: destinationURL)
    }
    catch let error {
        printErrorInConsole("❌  Ooops! Something went wrong installing MacOSX templates 😡 : \(error)")
        exit(1)
    }
}

func moveTemplates(for templateNames: [String], at sourceBaseURL: URL, to destinationBaseURL: URL) throws {
    let fileManager = FileManager.default

    // Verify that the source directory exists
    if !fileManager.fileExists(atPath: sourceBaseURL.path) {
        throw InstallError.sourceDirectoryDoesNotExist(sourceBaseURL)
    }
    
    // Create the destination directory (if needed)
    if !fileManager.fileExists(atPath: destinationBaseURL.path) {
        try fileManager.createDirectory(at: destinationBaseURL, withIntermediateDirectories: true)
        print("✅  \(destinationBaseURL.lastPathComponent) Template directory created successfully")
    }
    
    // Copy/replace each template
    for templateName in templateNames {
        
        let sourceURL = sourceBaseURL.appendingPathComponent(templateName)
        let destinationURL = destinationBaseURL.appendingPathComponent(templateName)
        
        // Verify that the source URL exists
        if !fileManager.fileExists(atPath: sourceURL.path) {
            throw InstallError.sourceTemplateDoesNotExist(sourceURL)
        }

        // Copy the template (if it doesn't already exist)
        if !fileManager.fileExists(atPath: destinationURL.path) {
            try fileManager.copyItem(at: sourceURL, to: destinationURL)
            print("✅  \(sourceURL.deletingPathExtension().lastPathComponent) Template installed succesfully 🎉.")
        } else {
            try fileManager.removeItem(at: destinationURL)
            try fileManager.copyItem(at: sourceURL, to: destinationURL)
            print("✅  \(sourceURL.deletingPathExtension().lastPathComponent) Template already exists. So has been replaced succesfully 🎉.")
        }

    }
}

moveTemplates()

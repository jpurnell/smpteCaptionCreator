//
//  generateFileURL.swift
//  AmazonCSVCreator
//
//  Created by Justin Purnell on 4/26/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation

func generateFileURL(exportFilePath: String) -> URL {
    let exportFileURL = URL(fileURLWithPath: exportFilePath)
    return exportFileURL
}

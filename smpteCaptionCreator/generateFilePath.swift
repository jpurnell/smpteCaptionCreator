//
//  generateFilePath.swift
//  smpteCaptionCreator
//
//  Created by Justin Purnell on 9/12/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation
func generateFilePath() -> String {
    let fileNameBase = filePath
    let fileNameStringArray = fileNameBase.components(separatedBy: "/")
    let fileNameCore = fileNameStringArray.last!.components(separatedBy: ".")
    let fileName = fileNameCore[0] + ".tt"
    let exportFilePath = NSHomeDirectory()+outputPath+fileName
    return exportFilePath
}

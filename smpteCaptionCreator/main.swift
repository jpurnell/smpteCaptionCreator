//
//  main.swift
//  smpteCaptionCreator
//
//  Created by Justin Purnell on 9/12/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation
// Take command line arguments to allow for batch processing
let arguments = CommandLine.arguments
let filePath = arguments[1]
let outputPath = arguments[2]

// Simple constant
let programName = "SMPTE creator 1.0"
// This is the subtitle file we'll be parsing
let lines = readFile(path: filePath)

// Create an empty array for all of the caption lines – each line is its own object in this model
var captions: [Caption] = []

// This creates two arrays from the subtitle file, one for the timecodes, which are on a different line from the actual content.
var timeArray = lines.enumerated().flatMap { $0.offset % 4 == 1 ? $0.element : nil }
var stringArray = lines.enumerated().flatMap { $0.offset % 4 == 2 ? $0.element : nil }

// We go through both of the arrays simultaneously to create the caption object. First, we parse the single timecode element above, breaking it at the standardized arrow thing they have there, then we also swap a colon in where the autosub program inserts a comma. Since the indexes are the same, we can put in the proper caption in the same stroke using the other caption string array
for (index,time) in timeArray.enumerated() {
    var caption = Caption(startTime: String(timeArray[index].components(separatedBy: " --> ")[0].characters.map { $0 == "," ? ":" : $0}), endTime: String(timeArray[index].components(separatedBy: " --> ")[1].characters.map { $0 == "," ? ":" : $0 }), captionString: stringArray[index])
    captions.append(caption)
}
// This is just for our benefit
print(generateFilePath())
print(smpteCaptionString(captions: captions))
// Then we just generate the proper strings by iterating over the captions array and using the file path input as the third argument (the process name is always the first argument)
saveAndExport(exportString: smpteCaptionString(captions: captions), exportFilePath: generateFilePath())

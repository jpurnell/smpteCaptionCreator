//
//  ReturnCaption.swift
//  smpteCaptionCreator
//
//  Created by Justin Purnell on 9/12/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation

func captionWidth(caption: Caption) -> Int {
    let stringLength = Float(caption.captionString.characters.count)
    let maxWidth = 39
    let width = min(100, Float(stringLength) / Float(maxWidth) * 100)
    let floatWidth = Float(width)
    return Int(floatWidth)
}

func returnCaption(captionArray: [Caption], level: Int) -> String {
    var returnString = ""
    var tabString = ""
    for _ in 0..<level {
        tabString = tabString + "\t"
    }
    for caption in captionArray {
        returnString = returnString + "\(tabString)<p begin=\"\(caption.startTime)\" end=\"\(caption.endTime)\" region=\"pop1\" style=\"basic\" tts:origin=\"15% 78.33%\" tts:extent=\"\(captionWidth(caption: caption))% 5.33%\">\(caption.captionString)</p>\n"
    }
    return returnString
}

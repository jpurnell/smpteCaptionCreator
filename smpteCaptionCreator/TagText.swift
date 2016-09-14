//
//  TagText.swift
//  smpteCaptionCreator
//
//  Created by Justin Purnell on 9/12/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation
func openTag(tag: String, level: Int) -> String {
    var returnString = ""
    for _ in 0..<level {
        returnString = returnString + "\t"
    }
    returnString = returnString + "<\(tag)>\n"
    return returnString
}

func closeTag(tag: String, level: Int) -> String {
    var returnString = ""
    for _ in 0..<level {
        returnString = returnString + "\t"
    }
    returnString = returnString + "</\(tag)>\n"
    return returnString
}
func regionXML(component: String, level: Int) -> String {
    var returnString = ""
    for _ in 0..<level {
        returnString = returnString + "\t"
    }
    returnString = returnString + "<region xml:id=\"\(component)\" tts:backgroundColor=\"transparent\" tts:showBackground=\"whenActive\"/>\n"
    return returnString
}

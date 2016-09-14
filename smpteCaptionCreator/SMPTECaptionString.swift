//
//  SMPTECaptionString.swift
//  smpteCaptionCreator
//
//  Created by Justin Purnell on 9/12/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation

func smpteCaptionString(captions: [Caption]) -> String {
    var returnString = ""
    returnString = returnString + xmlVersion
    returnString = returnString + openTag(tag: "head", level: 0)
    returnString = returnString + ttString
    returnString = returnString + openTag(tag: "metadata", level: 1)
    returnString = returnString + smpteDesc
    returnString = returnString + closeTag(tag: "metadata", level: 1)
    returnString = returnString + openTag(tag: "styling", level: 1)
    returnString = returnString + styleDesc
    returnString = returnString + closeTag(tag: "styling", level: 1)
    returnString = returnString + openTag(tag: "layout", level: 1)
    returnString = returnString + regionXML(component: "pop1", level: 2)
    returnString = returnString + regionXML(component: "pop2", level: 2)
    returnString = returnString + regionXML(component: "pop3", level: 2)
    returnString = returnString + regionXML(component: "pop4", level: 2)
    returnString = returnString + regionXML(component: "rollup1", level: 2)
    returnString = returnString + regionXML(component: "rollup2", level: 2)
    returnString = returnString + regionXML(component: "rollup3", level: 2)
    returnString = returnString + closeTag(tag: "layout", level: 1)
    returnString = returnString + closeTag(tag: "head", level: 0)
    returnString = returnString + openTag(tag: "body", level: 1)
    returnString = returnString + openTag(tag: "div", level: 2)
    returnString = returnString + returnCaption(captionArray: captions, level: 3)
    returnString = returnString + closeTag(tag: "div", level: 2)
    returnString = returnString + closeTag(tag: "body", level: 1)
    returnString = returnString + closeTag(tag: "tt", level: 0)
    return returnString
}

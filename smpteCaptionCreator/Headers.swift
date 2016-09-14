//
//  Headers.swift
//  smpteCaptionCreator
//
//  Created by Justin Purnell on 9/12/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation
let version: Double = 1.0
let encoding: String = "UTF-8"
let xmlVersion: String = "<?xml version=\"\(version)\" encoding=\"\(encoding)\"?>\n"
let ttString: String = "<tt xmlns=\"http://www.w3.org/ns/ttml\" xmlns:tts=\"http://www.w3.org/ns/ttml#styling\" xmlns:ttm=\"http://www.w3.org/ns/ttml#metadata\" xmlns:ttp=\"http://www.w3.org/ns/ttml#parameter\" xmlns:smpte=\"http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt\" xmlns:m608=\"http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt#cea608\" xml:lang=\"en\" ttp:timeBase=\"media\" ttp:frameRate=\"1\" ttp:frameRateMultiplier=\"24000 1001\">\n"
let headStart = "<head>\n"
let ttmDesc = "<ttm:desc>SMPTE Timed Text document created by \(programName)</ttm:desc>\n"
let smpteDesc = "<smpte:information xmlns:m608=\"http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt#cea608\" origin=\"http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt#cea608\" mode=\"Enhanced\" m608:channel=\"CC1\" m608:programName=\"/tmp/ccAbw7lx\" m608:captionService=\"F1C1CC\"/>\n"
let styleDesc = "<style xml:id=\"basic\" tts:color=\"white\" tts:backgroundColor=\"black\" tts:fontFamily=\"monospace\" tts:lineHeight=\"100%\" tts:fontSize=\"80%\" tts:fontWeight=\"normal\" tts:fontStyle=\"normal\"/>\n"

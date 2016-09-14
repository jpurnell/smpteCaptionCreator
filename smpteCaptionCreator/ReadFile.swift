//
//  ReadFile.swift
//  smpteCaptionCreator
//
//  Created by Justin Purnell on 9/12/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation
func readFile(path: String) -> Array<String> {
    
    do {
        let contents:String = try String(contentsOfFile: path, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
        let trimmed:String = contents.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        let lines:Array<String> =  NSString(string: trimmed).components(separatedBy: .newlines)
        return lines
    } catch {
        print("Unable to read file: \(path)");
        return [String]()
    }
}

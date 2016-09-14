//
//  saveAndExport.swift
//  AmazonCSVCreator
//
//  Created by Justin Purnell on 4/26/16.
//  Copyright © 2016 Justin Purnell. All rights reserved.
//

import Foundation

func saveAndExport(exportString: String, exportFilePath: String){
    let exportFileURL = generateFileURL(exportFilePath: exportFilePath)
    FileManager.default.createFile(atPath: exportFilePath, contents: NSData() as Data, attributes: nil)
    var fileHandle: FileHandle? = nil
    do{
        fileHandle = try FileHandle(forWritingTo: exportFileURL as URL)
    } catch {
        print("Error with fileHandle")
    }
    if fileHandle != nil {
        fileHandle?.seekToEndOfFile()
        let data = exportString.data(using: String.Encoding.utf8, allowLossyConversion: false)
        fileHandle!.write(data!)
        fileHandle!.closeFile()
    }
    print("File successfully saved to \(exportFilePath)")
}

//
//  ViewController.swift
//  fileManager
//
//  Created by somsak on 24/5/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let manager = FileManager.default
        
        guard let url = manager.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return
        }
        
        let newFolderUrl = url.appendingPathComponent("ios-academy")
        let secondSubFolder = url.appendingPathComponent("secondTest").appendingPathComponent("ios-academy").appendingPathComponent("ios-academy").appendingPathComponent("ios-academy")
        
        let fileUrl = newFolderUrl.appendingPathComponent("logs.txt")
        
//        do {
////            try manager.createDirectory(at: newFolderUrl, withIntermediateDirectories: true, attributes: [:])
//            let fileUrl = newFolderUrl.appendingPathComponent("logs.txt")
//            let data = "test somsak".data(using: .utf8)
//            manager.createFile(atPath: fileUrl.path, contents: data, attributes: [FileAttributeKey.creationDate: Data()])
//
//        } catch  {
//            print(error)
//        }
    }


}


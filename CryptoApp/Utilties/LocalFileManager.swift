//
//  LocalFileManager.swift
//  CryptoApp
//
//  Created by Marina Zhukova on 03.01.2025.
//

import Foundation
import SwiftUI

class LocalFileManager {
    
    static let instance = LocalFileManager()
    
    private init() {}
    
    func saveImage(image: UIImage, imageName: String, folderName: String) {
        
        createFolderIfNeeded(folderName: folderName)
        
        guard let data = image.pngData(),
              let url = getURLForImage(imageName: imageName, foldername: folderName)
        else { return }
        
        
        do{
            try data.write(to: url)
        } catch let error {
            print("Error saving image: \(imageName) \(error)")
        }
    }
    
    func getImage(imageName: String, folderName: String) -> UIImage? {
        guard
            let url = getURLForImage(imageName: imageName, foldername: folderName),
            FileManager.default.fileExists(atPath: url.path) else {
            return nil
        }
        
        return UIImage(contentsOfFile: url.path)
    }
    
    private func createFolderIfNeeded(folderName: String) {
        guard let url = getURLForFolder(folderName: folderName) else {
            return
        }
        
        if !FileManager.default.fileExists(atPath: url.path){
            do{
                try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
            }catch let error {
                print("Error creating folder:\(folderName) \(error)")
            }
        }
    }
    
    private func getURLForFolder(folderName: String) -> URL? {
        guard let url = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first else {
            return nil
        }
        return url.appendingPathComponent(folderName)
    }
    private func getURLForImage(imageName: String, foldername: String) -> URL? {
        guard let folderURL = getURLForFolder(folderName: foldername) else {
            return nil
        }
        return folderURL.appendingPathComponent(imageName + ".png")
        
    }
}

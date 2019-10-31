//
//  session.swift
//  Filistovich_Ruslan_Decoder_wh
//
//  Created by Ruslan on 10/31/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import Foundation
class Session {
    var photoAlbum = [PhotoAlbum]()
    func startURL(update: @escaping () -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/photos"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            guard error == nil else { return }
            do {
                self.photoAlbum = try JSONDecoder().decode([PhotoAlbum].self, from: data)
                update()
            } catch let error {
                print(error, "<========ERROR=========>")
            }
        }.resume()
    }
    func startURLImage(update: @escaping () -> Void) {
        
        
//        guard let url = URL(string: "https://applelives.com/wp-content/uploads/2016/03/iPhone-SE-11.jpeg") else { return }
//
//        let session = URLSession.shared
//        session.dataTask(with: url) { (data, response, error) in
//            if let data = data, let imageSession = UIImage(data: data) {
//                DispatchQueue.main.async {
//                    self.activityIndicator.stopAnimating()
//                    self.image.image = imageSession
//                }
//            }
//        }.resume()
    }
}

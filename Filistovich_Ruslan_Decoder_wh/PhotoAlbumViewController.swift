//
//  ViewController.swift
//  Filistovich_Ruslan_Decoder_wh
//
//  Created by Ruslan on 10/27/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class PhotoAlbumViewController: UIViewController {
    @IBOutlet weak var photoAlbumTable: UITableView!
    let session = Session()
    override func viewDidLoad() {
        super.viewDidLoad()
        photoAlbumTable.dataSource = self
        photoAlbumTable.delegate = self
        photoAlbumTable.register(UINib(nibName: "PhotoAlbumViewControllerCell", bundle: nil), forCellReuseIdentifier: "PhotoAlbumViewControllerCell")
        session.startURL {
            DispatchQueue.main.async { self.update() }
        }
    }
    func update()  {
        self.photoAlbumTable.reloadData()
    }
}

extension PhotoAlbumViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return session.photoAlbum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoAlbumViewControllerCell", for: indexPath) as? PhotoAlbumViewControllerCell
        cell?.photoAlbumTitle.text = session.photoAlbum[indexPath.row].title
        session.startURL {
            print("Hi")
        }
        if let url = URL(string: session.photoAlbum[indexPath.row].thumbnailUrl) {
           URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            guard error == nil else { return }
                let imageSession = UIImage(data: data)
                DispatchQueue.main.async {
                        cell?.photoAlbumImage.image = imageSession
                }
            }.resume()
        }
        return cell ?? UITableViewCell()
    }
}

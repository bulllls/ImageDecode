//
//  PhotoAlbumModel.swift
//  Filistovich_Ruslan_Decoder_wh
//
//  Created by Ruslan on 10/27/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import Foundation
//{
//  "albumId": 1,
//  "id": 1,
//  "title": "accusamus beatae ad facilis cum similique qui sunt",
//  "url": "https://via.placeholder.com/600/92c952",
//  "thumbnailUrl": "https://via.placeholder.com/150/92c952"
//},

struct PhotoAlbum: Decodable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
}


//
//  YoutubeSearchResponse.swift
//  NimbusTV
//
//  Created by Patrick Nguyen on 2023-04-25.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}

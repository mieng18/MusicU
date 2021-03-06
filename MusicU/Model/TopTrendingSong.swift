//
//  TopTrendingSong.swift
//  MusicU
//
//  Created by mai ng on 6/21/21.
//

import Foundation


struct TopTrendingSong {
    let rank: Int
    let song: Song
    
    
    static func fetchTopTrendingSongs() -> [TopTrendingSong] {
        var rank: Int = 1
        var topTrendingSongs: [TopTrendingSong] = []
        
        for song in Song.fetchSongs() {
            topTrendingSongs.append(TopTrendingSong(rank: rank, song: song))
            rank = rank + 1
        }
        return topTrendingSongs
            
    }
}

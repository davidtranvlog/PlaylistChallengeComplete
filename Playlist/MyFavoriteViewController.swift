//
//  ButtonViewController.swift
//  Playlist
//
//  Created by Thao Phung on 5/12/15.
//  Copyright (c) 2015 Thao Phung. All rights reserved.
//

import UIKit

class MyFavoriteViewController: UIViewController {
    
    // Model: an album
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var albumCoverImageView: UIImageView!
    @IBOutlet weak var descriptionView: UITextView!
    
    // random Album
    var album: Album? = Album(index: random() % TheBeatlesLibrary().albums.count + 1 )
    
    
    func updateUI()
    {
        let albumName = "\((album?.coverImageName)!)"
        backgroundImageView.image = UIImage(named: albumName)
        albumCoverImageView.image = UIImage(named: albumName)
        
        let songList = ((album?.songs)! as NSArray).componentsJoinedByString(", ")
        descriptionView.text = "\((album?.description)!) \n\nSome songs in the album:\n\(songList)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Album"
        updateUI()
    }
    
    
    
    
}

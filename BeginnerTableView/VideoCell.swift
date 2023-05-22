//
//  VideoCell.swift
//  BeginnerTableView
//
//  Created by Whoami on 16.05.2023.
//

import UIKit

class VideoCell: UITableViewCell {
    
    
    @IBOutlet weak var videoImageViev: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageViev.image = video.image
        videoTitleLabel.text = video.tilte
    }
}

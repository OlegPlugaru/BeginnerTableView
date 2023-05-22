//
//  VideoListScreen.swift
//  BeginnerTableView
//
//  Created by Whoami on 16.05.2023.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var videos: [Video] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()


    }
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        let video1 = Video(image: UIImage(named: "bouncyball")!, tilte: "Bouncy Ball")
        let video2 = Video(image: UIImage(named: "chatbot")!, tilte: "Chat Bot")
        let video3 = Video(image: UIImage(named: "ColorMix")!, tilte: "Color Mix")
        let video4 = Video(image: UIImage(named: "musicPlayer")!, tilte: "Music Player")
        let video5 = Video(image: UIImage(named: "rockPaperScissors")!, tilte: "Rock Paper Scissors")
        let video6 = Video(image: UIImage(named: "trashCan")!, tilte: "Trash Can")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }
}

extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
        
    }
}

//
//  PhotoDetailsViewController.swift
//  tumblrfeed
//
//  Created by Christopher Guan on 2/6/18.
//  Copyright © 2018 Christopher Guan. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    var post: [String:Any]?
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uses passed in post to be able to display photo in DetailView
        if let post = post {
            if let photos = post["photos"] as? [[ String: Any]] {
                // Photos is NOT nil, so we can use it!
                // Get image url
                let photo = photos[0]
                let originalSize = photo["original_size"] as! [String: Any]
                let urlString = originalSize["url"] as! String
                let url = URL(string: urlString)
                
                // Set the image view
                photoImageView.af_setImage(withURL: url!)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Christina S. on 10/8/18.
//  Copyright © 2018 Christina S. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    var photoURL: [String: Any]?
    
    @IBOutlet weak var photoDetailsViewImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        // Do any additional setup after loading the view.
        if let photos = photoURL!["photos"] as? [[String: Any]] {
            // If photos is not nil, we can use it
            
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            photoDetailsViewImage.af_setImage(withURL: url!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! UITableViewCell
        if let indexPath = photosTableView.indexPath(for: cell) {
            let vc = segue.destination as! PhotoDetailsViewController
            let post = posts[indexPath.row]
            vc.photoURL = post
        }
*/
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        */
       
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


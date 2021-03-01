//
//  ViewController.swift
//  VideoGamesApp
//
//  Created by Cem Eke on 1.03.2021.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var captionImageView: UIImageView!
    
    
    var gameManager = GameManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameManager.requestFunc()
    }
    
    @IBAction func pageControl(_ sender: Any) {
        
    }
    
    
}

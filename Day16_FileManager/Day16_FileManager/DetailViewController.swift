//
//  DetailViewController.swift
//  Day16_FileManager
//
//  Created by Renoy on 14/10/2019.
//  Copyright © 2019 Renoy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    var numberOfPages: Int?
    var selectedPageNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(selectedPageNumber ?? 0) of \(numberOfPages ?? 0)"
        
        
        
        navigationItem.largeTitleDisplayMode = .never
        if let image = selectedImage {
            imageView.image = UIImage(named: image)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }
    
    

}

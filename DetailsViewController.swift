//
//  DetailsViewController.swift
//  testseance&
//
//  Created by Mac Mini 3 on 24/9/2024.
//

import UIKit

class DetailsViewController: UIViewController{
    var brandtitle: String?
    var brandname: String?
    var brandPrice: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: brandtitle!)
        name.text = brandtitle!
        brand.text = brandname!
        price.text = brandPrice!

    }
    
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var price: UILabel!
    /*
     @IBOutlet weak var price: UILabel!
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

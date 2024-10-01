//
//  tViewController.swift
//  testseance&
//
//  Created by Mac Mini 3 on 18/9/2024.
//

import UIKit

class tViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let item=["Pullover","Shirt","Blouse","Longsleeve Violeta"]
    let itemBrand=["zara","HA","bershka","pull & bear"]
    let itemPrice=["15","25","11","10"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        item.count
    }
    	
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mCell")!
        let contentView = cell.contentView
        let itemLabel = contentView.viewWithTag(1) as!UILabel
        let itemLabelBrand = contentView.viewWithTag(2) as!UILabel
        let itemLabelPrice = contentView.viewWithTag(3) as!UILabel
        let itemImage = contentView.viewWithTag(4) as!UIImageView
        
        itemLabel.text = item[indexPath.row]
        itemLabelBrand.text = itemBrand[indexPath.row]
        itemLabelPrice.text = itemPrice[indexPath.row]
        itemImage.image = UIImage(named: item[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let brand = [item[indexPath.row] ,itemBrand[indexPath.row] ,itemPrice[indexPath.row]]
           
            performSegue(withIdentifier: "segue", sender: brand)
                          }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let brand   = sender as! [String]
        let destination = segue.destination as! DetailsViewController
        destination.brandtitle = brand[0]
        destination.brandname = brand[1]
        destination.brandPrice = brand[2]


                                }
                              
    
                          

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


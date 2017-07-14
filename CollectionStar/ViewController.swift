//
//  ViewController.swift
//  CollectionStar
//
//  Created by DinhTien on 6/15/17.
//  Copyright © 2017 DinhTien. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, DatasendDelegate {
    
    
    @IBOutlet weak var tblStar: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
        
        print("view did load")
        
        creatData()
        tblStar.delegate = self
        tblStar.dataSource = self
        
       
    }
    
    //---array data
    var dataFood = [DataFood]()
    
    //---Memory Warning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }
    
    
    //--- protocol function
    func userSendData(data: DataFood) {
        //print("enter sendData func")
        //data.imgPhoto = String(describing: img.image?.accessibilityIdentifier)
        dataFood.append(data)
        tblStar.reloadData()

        //print(dataFood[20].name)
    }
    
    
    //---prepare function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("enter prepare func")
        if segue.identifier == "showSendingVC" {
            let view: AddController = segue.destination as! AddController
            view.delegate = self
    
        }
    }
    
    
    
    
    //--- rows number
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFood.count
    }
    
    
    
   //functions create table
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StarCell", for: indexPath) as! StarViewCell
        
        cell.lblName.text = dataFood[indexPath.row].name
        cell.imgPhoto.image = UIImage(named: dataFood[indexPath.row].imgPhoto)
        
        //----
        if let dataImage = dataFood[indexPath.item].dataImage {
             cell.imgPhoto.image = UIImage(data: dataImage)
        }
        
        if dataFood[indexPath.row].point == 0 {
            cell.imgStar1.image = #imageLiteral(resourceName: "star")
            cell.imgStar2.image = #imageLiteral(resourceName: "star")
            cell.imgStar3.image = #imageLiteral(resourceName: "star")
            cell.imgStar4.image = #imageLiteral(resourceName: "star")
            cell.imgStar5.image = #imageLiteral(resourceName: "star")

        }
        else if dataFood[indexPath.row].point == 1 {
            cell.imgStar1.image = #imageLiteral(resourceName: "star1")
            cell.imgStar2.image  = #imageLiteral(resourceName: "star")
            cell.imgStar3.image  = #imageLiteral(resourceName: "star")
            cell.imgStar4.image  = #imageLiteral(resourceName: "star")
            cell.imgStar5.image  = #imageLiteral(resourceName: "star")
        }
        else if dataFood[indexPath.row].point == 2 {
            cell.imgStar1.image = #imageLiteral(resourceName: "star1")
            cell.imgStar2.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar3.image  = #imageLiteral(resourceName: "star")
            cell.imgStar4.image  = #imageLiteral(resourceName: "star")
            cell.imgStar5.image  = #imageLiteral(resourceName: "star")
        }
        else if dataFood[indexPath.row].point == 3 {
            cell.imgStar1.image = #imageLiteral(resourceName: "star1")
            cell.imgStar2.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar3.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar4.image  = #imageLiteral(resourceName: "star")
            cell.imgStar5.image  = #imageLiteral(resourceName: "star")
        }
        else if dataFood[indexPath.row].point == 4 {
            cell.imgStar1.image = #imageLiteral(resourceName: "star1")
            cell.imgStar2.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar3.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar4.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar5.image  = #imageLiteral(resourceName: "star")
        }
        else {
            cell.imgStar1.image = #imageLiteral(resourceName: "star1")
            cell.imgStar2.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar3.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar4.image  = #imageLiteral(resourceName: "star1")
            cell.imgStar5.image  = #imageLiteral(resourceName: "star1")
        }

        
        
        return cell
    }
    
    
    //---height space
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    
}
extension ViewController {
    
    //--- create data
    func creatData() {
        for i in 1...20 {
            dataFood.append(DataFood.init(name1: "Food: \(i)", img: "food\(i%3)", point1: i%5))
        }
    }
    
    //----delete function
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataFood.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        else if editingStyle == .insert {
            
        }
    }
    func kaiTets(){
        
    }
}


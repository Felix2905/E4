//
//  EditController.swift
//  CollectionStar
//
//  Created by DinhTien on 6/16/17.
//  Copyright © 2017 DinhTien. All rights reserved.
//

import UIKit

protocol DatasendDelegate {
    func userSendData(data: DataFood)
}

class AddController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    
    var point: Int = 0
    
    //---action of star buttons
    @IBAction func btn1(){
        
        point = 1
        imgStar1.image = #imageLiteral(resourceName: "star1")
        imgStar2.image = #imageLiteral(resourceName: "star")
        imgStar3.image = #imageLiteral(resourceName: "star")
        imgStar4.image = #imageLiteral(resourceName: "star")
        imgStar5.image = #imageLiteral(resourceName: "star")
    }
    @IBAction func btn2(){
        point = 2
        imgStar1.image = #imageLiteral(resourceName: "star1")
        imgStar2.image = #imageLiteral(resourceName: "star1")
        imgStar3.image = #imageLiteral(resourceName: "star")
        imgStar4.image = #imageLiteral(resourceName: "star")
        imgStar5.image = #imageLiteral(resourceName: "star")
        
    }
    @IBAction func btn3(){
        point = 3
        imgStar1.image = #imageLiteral(resourceName: "star1")
        imgStar2.image = #imageLiteral(resourceName: "star1")
        imgStar3.image = #imageLiteral(resourceName: "star1")
        imgStar4.image = #imageLiteral(resourceName: "star")
        imgStar5.image = #imageLiteral(resourceName: "star")
        
    }
    @IBAction func btn4(){
        point = 4
        imgStar1.image = #imageLiteral(resourceName: "star1")
        imgStar2.image = #imageLiteral(resourceName: "star1")
        imgStar3.image = #imageLiteral(resourceName: "star1")
        imgStar4.image = #imageLiteral(resourceName: "star1")
        imgStar5.image = #imageLiteral(resourceName: "star")
        
    }
    @IBAction func btn5(){
        point = 5
        imgStar1.image = #imageLiteral(resourceName: "star1")
        imgStar2.image = #imageLiteral(resourceName: "star1")
        imgStar3.image = #imageLiteral(resourceName: "star1")
        imgStar4.image = #imageLiteral(resourceName: "star1")
        imgStar5.image = #imageLiteral(resourceName: "star1")
        
    }

    
    var delegate: DatasendDelegate? = nil
    
    
    //---Button save when add item
    @IBAction func saveTapped(){
        print("Save ")
        if delegate != nil {
            if tfName.text != nil {
                
                let name1 = tfName.text!
                let img1 = String(describing: imgPhoto.image!.accessibilityIdentifier)
                // let point1 = 3
                guard let dataImage = UIImagePNGRepresentation(imgPhoto.image!) else { return }
                
                let data = DataFood(name1: name1, img: img1, point1: point, data: dataImage)
                
                delegate?.userSendData(data: data)
                //dismiss(animated: true, completion: nil)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func btnCancel(){
        
    }

    //------viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        imgPhoto.addGestureRecognizer(UITapGestureRecognizer(target: self , action: #selector(imgTapped)))
        imgPhoto.isUserInteractionEnabled = true
        
        imgStar1.image = #imageLiteral(resourceName: "star")
        imgStar2.image = #imageLiteral(resourceName: "star")
        imgStar3.image = #imageLiteral(resourceName: "star")
        imgStar4.image = #imageLiteral(resourceName: "star")
        imgStar5.image = #imageLiteral(resourceName: "star")
        imgPhoto.image = #imageLiteral(resourceName: "photo")
        
    }
    
  
    
    func imgTapped(){
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
//            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
            return
        }
        
        
        
        // Set photoImageView to display the selected image.
        imgPhoto.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
}


}

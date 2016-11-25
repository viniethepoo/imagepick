//
//  ViewController.swift
//  imagepick
//
//  Created by vinay kumar rai on 26/10/16.
//  Copyright © 2016 vinay rai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var toptext: UITextField!
    @IBOutlet weak var bottomtext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resettext()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func ImagePick(_ sender: AnyObject) {
        let pickercontroller = UIImagePickerController()
        pickercontroller.delegate = self
        self.present(pickercontroller, animated: true, completion: nil)
    }
    
    
    @IBAction func Imagesave(_ sender: AnyObject) {
      save()
    }
    func save() {
        //Create the meme
    }

    func  resettext(){
        toptext.text = "TOP"
        toptext.textColor = UIColor.black
        bottomtext.textColor = UIColor.black
        bottomtext.text = "BOTTOM"
    
    }
    @IBAction func share(_ sender: Any) {
        
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        ImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismiss(animated: false, completion: nil)
    }

}


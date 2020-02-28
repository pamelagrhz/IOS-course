//
//  SegundaPantallaViewController.swift
//  programa1
//
//  Created by Pamela Ruíz on 19/10/19.
//  Copyright © 2019 Pamela Ruíz. All rights reserved.
//

import UIKit

class SegundaPantallaViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var labelName: UILabel!
    
    @IBOutlet weak var nombre: UITextField!
    @IBAction func nameBtn(_ sender: UIButton) {
    
         // declarations
         var labelTitle:String=String();
         var labelMessage:String = String();
         var result:String=String();
         let name = nombre.text!

        if name == ""{
            labelName.text = "Ingresa tu nombre*"
        }
        else{
            labelName.text = "Hola! \(name)"
        }
         
         
         //MesageConditionals
         if name == ""{
             labelTitle="ERROR"
             labelMessage = "Por favor inserta tu nombre"
             result="without name"
         }
         else{
            
             labelTitle = "Ok!"
             labelMessage = "Hola! \(name) "
             result="Label: \(name)"
         }
        //Alert title and message
         let alertController : UIAlertController=UIAlertController(title: "\(labelTitle)", message: "\(labelMessage)", preferredStyle: .alert)
         //return buton
        let returnAction:UIAlertAction = UIAlertAction(title: "return", style: .destructive , handler:nil)
         
         //continuebutton
         let continueAction:UIAlertAction = UIAlertAction(title: "continue", style: .cancel, handler: { action in
            print("\(result)")
         })
        
         alertController.addAction(returnAction)
         alertController.addAction(continueAction)
         present(alertController, animated: true, completion: nil)
         
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

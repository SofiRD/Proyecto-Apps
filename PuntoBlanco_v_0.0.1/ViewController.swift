//
//  ViewController.swift
//  PuntoBlanco_v_0.0.1
//
//  Created by user179426 on 10/18/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfCorreo: UITextField!
    @IBOutlet weak var tfUsuario: UITextField!
    @IBOutlet weak var tfContrasena: UITextField!

    @IBOutlet weak var btRegistro: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func scRegistroSesion(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            //iniciar sesión
            tfCorreo.isHidden = true
            btRegistro.setTitle("Iniciar sesión", for: .normal)
        }else{
            //registro
            tfCorreo.isHidden = false
            btRegistro.setTitle("Registrar", for: .normal)
        }
        
    }
    
}


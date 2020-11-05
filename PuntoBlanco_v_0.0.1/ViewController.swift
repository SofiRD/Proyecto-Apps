//
//  ViewController.swift
//  PuntoBlanco_v_0.0.1
//
//  Created by user179426 on 10/18/20.
//

import UIKit

//static func
func styleTextField(_ textfield: UITextField ){
    //linea de abajo
    let bottomLine = CALayer()
    
    bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
    
    bottomLine.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
    
    //quitar los bordes del textfield
    textfield.borderStyle = .none
    
    //añadir línea a textfield
    textfield.layer.addSublayer(bottomLine)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tfCorreo: UITextField!
    @IBOutlet weak var tfUsuario: UITextField!
    @IBOutlet weak var tfContrasena: UITextField!
    @IBOutlet weak var lbError: UILabel!
    
    @IBOutlet weak var btRegistro: UIButton!
    
    var isIniciarSesion : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements() {
        lbError.alpha = 0
        //styling a textfields
        styleTextField(tfCorreo)
        styleTextField(tfUsuario)
        styleTextField(tfContrasena)
    }

    @IBAction func scRegistroSesion(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            //iniciar sesión
            isIniciarSesion = true
            tfCorreo.isHidden = true
            btRegistro.setTitle("Iniciar sesión", for: .normal)
        }else{
            //registro
            isIniciarSesion = false
            tfCorreo.isHidden = false
            btRegistro.setTitle("Registrar", for: .normal)
        }
        
    }
    
    @IBAction func go(_ sender: UIButton) {
        if isIniciarSesion == true{
            
        }else{

        }
    }
}


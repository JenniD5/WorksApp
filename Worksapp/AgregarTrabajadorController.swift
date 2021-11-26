//
//  AgregarTrabajadorController.swift
//  Worksapp
//
//  Created by Alumno on 11/24/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarTrabajadorController : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtNacionalidad: UITextField!
    
    @IBOutlet weak var txtPuesto: UITextField!
    @IBOutlet weak var txtExperiencia: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtEscolaridad: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtSexo: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtApellido: UITextField!
    
    
    var callBackAgregarTrabajador : ((Trabajador)-> Void)?
    
    override func viewDidLoad() {
        self.title = "agregar trabajador"
    
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        
        let trabajador = Trabajador(nombre: txtNombre.text!, apellido: txtApellido.text!, telefono: txtTelefono.text!, sexo: txtSexo.text!, puesto: txtPuesto.text!, nacionalidad: txtNacionalidad.text!, direccion: txtDireccion.text!, edad: txtEdad.text!, escolaridad: txtEscolaridad.text!, experiencia: txtExperiencia.text!)
        callBackAgregarTrabajador!(trabajador)
        self.navigationController!.popViewController(animated: true) 
        
    }
    
}

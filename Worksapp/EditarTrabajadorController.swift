//
//  EditarTrabajadorController.swift
//  Worksapp
//
//  Created by Alumno on 11/24/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarTrabajadorController : UIViewController {
    
    var trabajador: Trabajador?
    var indice : Int = -1
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApellido: UITextField!
    @IBOutlet weak var txtNacionalidad: UITextField!
    @IBOutlet weak var txtEscolaridad: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtSexo: UITextField!
    @IBOutlet weak var txtExperiencia: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    var callbackActualizarTVTrabajadores : (()->Void)?
    var callbackEliminarTrabajador : ((Int)->Void)?
    
    @IBOutlet weak var btnEditar: UIButton!
    var editando = false
    
    @IBOutlet weak var txtPuesto: UITextField!
    
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var btnEliminar: UIButton!
    
    override func viewDidLoad() {
    
        
        txtNombre.text = trabajador!.nombre
        txtApellido.text = trabajador!.apellido
        txtSexo.text = trabajador!.sexo
        txtTelefono.text = trabajador!.telefono
        txtPuesto.text = trabajador!.puesto
        txtExperiencia.text = trabajador!.puesto
        txtNacionalidad.text = trabajador!.nacionalidad
        txtDireccion.text = trabajador!.direccion
        txtEdad.text = trabajador!.edad
        txtEscolaridad.text = trabajador!.escolaridad
        
       
        txtNacionalidad.isEnabled=false
        txtExperiencia.isEnabled=false
        txtEscolaridad.isEnabled=false
        txtDireccion.isEnabled=false
        txtTelefono.isEnabled=false
        txtEdad.isEnabled=false
        txtApellido.isEnabled=false
        txtPuesto.isEnabled=false
        txtSexo.isEnabled=false
        txtNombre.isEnabled=false
        
        
        btnGuardar.isHidden = true
        self.title = "Detalles del trabajador"
        
        
    }
    
  
    @IBAction func doTapGuardar(_ sender: Any) {
                     trabajador!.nombre = txtNombre.text!
                     trabajador!.apellido=txtApellido.text!
                     trabajador!.direccion=txtDireccion.text!
                     trabajador!.edad=txtEdad.text!
                     trabajador!.escolaridad=txtEscolaridad.text!
                     trabajador!.experiencia=txtExperiencia.text!
                     trabajador!.nacionalidad=txtNacionalidad.text!
                     trabajador!.puesto=txtPuesto.text!
                     trabajador!.telefono=txtTelefono.text!
                     trabajador!.sexo = txtSexo.text!
               callbackActualizarTVTrabajadores!()
        self.navigationController!.popViewController(animated: true)
    }
    
 
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarTrabajador!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    
    @IBAction func doTapEditar(_ sender: Any) {
        btnGuardar.isHidden=false
        
        
        txtNombre.isEnabled=true
        txtSexo.isEnabled=true
        txtEdad.isEnabled=true
        txtPuesto.isEnabled=true
        txtApellido.isEnabled=true
        txtTelefono.isEnabled=true
        txtDireccion.isEnabled=true
        txtEscolaridad.isEnabled=true
        txtExperiencia.isEnabled=true
        txtNacionalidad.isEnabled=true
        
        self.title = "Editar Trabajador"
        
        
        
    }
}

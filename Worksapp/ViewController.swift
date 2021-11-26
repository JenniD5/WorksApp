//
//  ViewController.swift
//  Worksapp
//
//  Created by Alumno on 11/24/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaTrabajador") as! CeldaTrabajadorController
        celda.lblApellido.text=trabajadores[indexPath.row].apellido
        celda.lblNombre.text=trabajadores[indexPath.row].nombre
        celda.lblPuesto.text=trabajadores[indexPath.row].puesto
        celda.lblEdad.text=trabajadores[indexPath.row].edad
        return celda
        
    }
    
 
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trabajadores.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 317
    }
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditar" {
            let trabajadorSeleccionado = trabajadores[tvTrabajadores.indexPathForSelectedRow!.row]
            let destino = segue.destination as! EditarTrabajadorController
            
            destino.trabajador = trabajadorSeleccionado
            
            destino.indice = tvTrabajadores.indexPathForSelectedRow!.row
            
            
            destino.callbackActualizarTVTrabajadores = actualizarTvTrabajadores
            destino.callbackEliminarTrabajador = eliminarTrabajador
        }
        
        else if segue.identifier == "goToAgregar"{
            let destino = segue.destination as! AgregarTrabajadorController
            
            destino.callBackAgregarTrabajador = agregarTrabajador
        }

    }
    
  var trabajadores : [Trabajador] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title="trabajadores"
        
        trabajadores.append(Trabajador(nombre: "Juan", apellido: "Lopez", telefono: "564980897", sexo: "hombre", puesto: "jefe", nacionalidad: "mexicana", direccion: "cd obregon", edad: "45 años", escolaridad: "prepa", experiencia: "10 años"))
        
        trabajadores.append(Trabajador(nombre: "Jose", apellido: "Perez", telefono: "564908987", sexo: "hombre", puesto: "gerente", nacionalidad: "mexicana", direccion: "hermosillo", edad: "45 años", escolaridad: "universidad", experiencia: "20 años"))
        trabajadores.append(Trabajador(nombre: "Rafa", apellido: "Castro", telefono: "564900087", sexo: "hombre", puesto: "limpieza", nacionalidad: "cubana", direccion: "hermosillo", edad: "49 años", escolaridad: "kinder", experiencia: "ninguna"))
        trabajadores.append(Trabajador(nombre: "Ana", apellido: "Torres", telefono: "994908987", sexo: "mujer", puesto: "abogada", nacionalidad: "mexicana", direccion: "morelia", edad: "35 años", escolaridad: "universidad", experiencia: "5 años"))
        trabajadores.append(Trabajador(nombre: "Gabi", apellido: "Lukas", telefono: "560900987", sexo: "mujer", puesto: "oficinista", nacionalidad: "peruana", direccion: "cd mexico", edad: "25 años", escolaridad: "universidad", experiencia: "ninguna"))
        trabajadores.append(Trabajador(nombre: "Gabriel", apellido: "Tarso", telefono: "457898778", sexo: "hombre", puesto: "coreografo", nacionalidad: "argentina", direccion: "colima", edad: "20 años", escolaridad: "prepa", experiencia: "2 años"))
        
        trabajadores.append(Trabajador(nombre: "Gael", apellido: "Galvan", telefono: "0987656789", sexo: "hombre", puesto: "chef", nacionalidad: "mexicana", direccion: "Uruapan", edad: "33 años", escolaridad: "prepa", experiencia: "5 años"))
        
        trabajadores.append(Trabajador(nombre: "Maria", apellido: "Perez", telefono: "098453213", sexo: "mujer", puesto: "contadora", nacionalidad: "española", direccion: "guadalajara", edad: "55 años", escolaridad: "universidad", experiencia: "35 años"))
        
        trabajadores.append(Trabajador(nombre: "Jhon", apellido: "Cruz", telefono: "562340087", sexo: "hombre", puesto: "quimico", nacionalidad: "brasileña", direccion: "morelia", edad: "29 años", escolaridad: "universidad", experiencia: "4 años"))
        trabajadores.append(Trabajador(nombre: "Karla", apellido: "Juarez", telefono: "99499828987", sexo: "mujer", puesto: "dentista", nacionalidad: "mexicana", direccion: "hermosillo", edad: "46 años", escolaridad: "universidad", experiencia: "203 años"))
        trabajadores.append(Trabajador(nombre: "Carlos", apellido: "Burboa", telefono: "452900987", sexo: "mujer", puesto: "camarografo", nacionalidad: "peruana", direccion: "cd juarez", edad: "25 años", escolaridad: "universidad", experiencia: "ninguna"))
        trabajadores.append(Trabajador(nombre: "Daniel", apellido: "Benitez", telefono: "457895678", sexo: "hombre", puesto: "pintor", nacionalidad: "mexicana", direccion: "guadalajara", edad: "50 años", escolaridad: "secundaria", experiencia: "21 años"))
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tvTrabajadores: UITableView!
    
    func actualizarTvTrabajadores(){
        tvTrabajadores.reloadData()
    }
    func eliminarTrabajador(indice:Int){
        trabajadores.remove(at: indice)
        actualizarTvTrabajadores()
    }
    func agregarTrabajador(trabajador:Trabajador){
        trabajadores.append(trabajador)
        actualizarTvTrabajadores()
    }
    
  
}


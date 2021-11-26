//
//  Trabajador.swift
//  Worksapp
//
//  Created by Alumno on 11/24/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Trabajador {
    var nombre = ""
    var apellido = ""
    var telefono = ""
    var sexo = ""
    var puesto = ""
    var nacionalidad = ""
    var direccion = ""
    var edad = ""
    var escolaridad = ""
    var experiencia = ""
    
    init(nombre: String, apellido: String, telefono: String, sexo: String, puesto: String, nacionalidad: String, direccion: String, edad: String, escolaridad: String, experiencia: String) {
        self.nombre = nombre
        self.apellido = apellido
        self.telefono = telefono
        self.sexo = sexo
        self.puesto = puesto
        self.nacionalidad = nacionalidad
        self.direccion = direccion
        self.edad = edad
        self.escolaridad = escolaridad
        self.experiencia = experiencia
    }
    
}

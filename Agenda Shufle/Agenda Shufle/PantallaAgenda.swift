//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by Jadzia Gallegos on 26/02/25.
//

import SwiftUI


let contactos = [
    ContactoAgenda(nombre: "Juna", telefono: "12345"),
    ContactoAgenda(nombre: "Jun", telefono: "12345"),
    ContactoAgenda(nombre: "Ja", telefono: "12345"),
    ContactoAgenda(nombre: "Juas", telefono: "12345"),
    ContactoAgenda(nombre: "Junsda", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Juasdna", telefono: "12345"),
    ContactoAgenda(nombre: "Jusdana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
]


struct PantallaAgenda: View {
    var body: some View {

        List {
            VStack {
                ForEach(contactos){ contacto in
                    Text("\(contacto.nombre)")
                    ContactoPrevista()
                }
            }
            .background(Color.cyan)
        }

    }
}




#Preview {
    PantallaAgenda()
}

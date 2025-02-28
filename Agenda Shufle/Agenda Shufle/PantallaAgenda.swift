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
    ContactoAgenda(nombre: "Juaftyukftyuks", telefono: "12345"),
    ContactoAgenda(nombre: "Junsda", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Juasdna", telefono: "12345"),
    ContactoAgenda(nombre: "Jusdana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
    ContactoAgenda(nombre: "Judsana", telefono: "12345"),
]


struct PantallaAgenda: View {
    var largo_de_pantalla = UIScreen.main.bounds.width
    var ancho_de_pantalla = UIScreen.main.bounds.height
    
    var body: some View {

        ScrollView {
            VStack(spacing: 10) {
                ForEach(contactos){ contacto in
                    //Text("\(contacto.nombre)")
                    ContactoPrevista(contacto_a_mostar: contacto, al_pulsar: {print("Te envia saludos \(contacto.nombre) desde la pantalla de agenda")})
                }
            }
            .background(Color.cyan)
            .frame(width: largo_de_pantalla, alignment: Alignment.center)
        }
        .background(Color.green)


    }
}




#Preview {
    PantallaAgenda()
}

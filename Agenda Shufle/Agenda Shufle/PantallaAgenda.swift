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
            .frame(alignment: Alignment.center)
            .padding(10)
            .background(Color.cyan)
        }
        .background(Color.green)
        
        HStack(alignment: VerticalAlignment.center, spacing: 25){
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                
                Rectangle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "plus")
                    .background(Color.red)
            }
            .padding(15)
            .onTapGesture {
                print("Falta implemetnar esta parte")
            }
            
            Spacer()
            
            ZStack{
                Circle()
                    .frame(width: 100)
                    .tint(Color.red)
                    .foregroundColor(Color.green)
                
                Circle()
                    .frame(width: 65, height: 65)
                    .foregroundColor(Color.cyan)
                Image(systemName: "shuffle")
                    .background(Color.red)
            }
            .padding(15)
            .onTapGesture {
                print("Lanzar un intent para iniciar la llamada")
            }
        }


    }
}




#Preview {
    PantallaAgenda()
}

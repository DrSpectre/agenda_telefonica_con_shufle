//
//  pantalla_agregar_contacto.swift
//  Agenda Shufle
//
//  Created by Jadzia Gallegos on 03/03/25.
//

import SwiftUI

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    
    var body: some View {
        Text("Colocar la etiqueta de nombre")
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 75)
                .foregroundColor(Color.cyan)
            TextField("PLace holder", text: $nombre)
                //.border(Rectangle(), width: 15)
                .padding(10)
        }

        
        Text("Colocar el campo del numero telefonico")
        TextField("Place holder numeros", text: $numero_telefonico)
            .frame(height: 35)
            .padding(10)
        
        HStack{
            Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus",
                  padding: 10)
            Spacer()
            Icono(tamaño: 65, ruta_icono: "return")
                .background(nombre == "" ? Color.red: Color.cyan)
        }
        .background(Color.cyan)
    }
}

#Preview {
    PantallaAgregarContacto()
}

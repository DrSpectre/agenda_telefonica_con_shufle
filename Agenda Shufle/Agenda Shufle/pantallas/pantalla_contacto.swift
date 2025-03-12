//
//  pantalla_contacto.swift
//  Agenda Shufle
//
//  Created by Jadzia Gallegos on 12/03/25.
//


import SwiftUI

struct PantallaContacto: View {
    var contacto_a_mostrar: ContactoAgenda
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(Color.red)
                .frame(width: 225)
            HStack{
                Image(contacto_a_mostrar.imagen)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .clipShape(Circle())
            }

        }

        
        Text(contacto_a_mostrar.nombre)
        Text(contacto_a_mostrar.telefono)
        
    }
}

#Preview {
    PantallaContacto(contacto_a_mostrar: contacto_alterno)
}

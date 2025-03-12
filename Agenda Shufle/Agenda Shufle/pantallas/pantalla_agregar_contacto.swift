//
//  pantalla_agregar_contacto.swift
//  Agenda Shufle
//
//  Created by Jadzia Gallegos on 03/03/25.
//

import SwiftUI

enum Imagenes: String, Identifiable {
    case imagen, imagen2
    
    var id: String { rawValue }
}

struct PantallaAgregarContacto: View {
    @State private var nombre: String = ""
    @State private var numero_telefonico: String = ""
    @State private var imagen_seleccionada: String = "imagen"
    
    @State private var imagen_selec: Imagenes?
    
    var boton_salir: () -> Void = {
        print("PARECE QUE TE HAS EQUIVOCADO")
    }
    var boton_agregar: (_ nombre: String, _ numero: String, _ imagen: String) -> Void = {nombre, numero, imagen in
        print("PARECE QUE TE HAS EQUIVOCADO")
    }
    
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
            // Este icono es para agregar a un contacto
            Icono(tamaño: 65, ruta_icono: "person.crop.circle.badge.plus",
                  padding: 10)
            .onTapGesture {
                boton_agregar(nombre, numero_telefonico, imagen_seleccionada)
            }
            
            Spacer()
            // Este es para salir
            Icono(tamaño: 65, ruta_icono: "return")
                .background(nombre == "" ? Color.red: Color.cyan)
                .onTapGesture {
                    boton_salir()
                }
        }
        .background(Color.cyan)
        
        HStack{
            SeleccionImagen(imagen: Imagenes.imagen, imagen_seleccionada: $imagen_selec)


            SeleccionImagen(imagen: Imagenes.imagen2, imagen_seleccionada: $imagen_selec)
        }

    }
    
}

struct SeleccionImagen: View {
    var anchura: CGFloat = 75
    var imagen: Imagenes
    
    @Binding var imagen_seleccionada: Imagenes?
    
    @State private var seleccionado: Bool = false
    
    var body: some View{
        ZStack{
            Circle()
                .foregroundColor((imagen_seleccionada?.rawValue == imagen.rawValue) ? Color.red: Color.gray)
                .frame(height: anchura + 10)
            Image(imagen.id)
                .resizable()
                .scaledToFit()
                .frame(height: anchura)
                .clipShape(Circle())
        }
        .onTapGesture {
            print(imagen)
            imagen_seleccionada = imagen
        }

    }
}


#Preview {
    PantallaAgregarContacto()
}

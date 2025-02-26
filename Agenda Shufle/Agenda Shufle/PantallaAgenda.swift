//
//  PantallaAgenda.swift
//  Agenda Shufle
//
//  Created by Jadzia Gallegos on 26/02/25.
//

import SwiftUI

struct PantallaAgenda: View {
    var body: some View {

        List {
            VStack {
                ForEach(0...45, id: \.self){ _ in
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

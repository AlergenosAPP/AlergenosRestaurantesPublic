import SwiftUI

struct SettingsListView: View {
    @Binding var path: [SettingsDestination]
    var viewModel: SettingsViewModel
    var isLogged: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Ajustes")
                .font(.title2)
                .bold()
            
            SettingsRow(icon:"cross.fill", text:"Alérgenos") {
                path.append(.changeAllergens)
            }
            
            if(isLogged){
                SettingsRow(icon:"person.fill", text:"Modificar datos personales") {
                    path.append(.changePersonalData)
                }
            }
            
            SettingsRow(icon: "globe", text: "Idioma") {
                viewModel.openAppSettings()
            }
            
            SettingsRow(icon:"location.fill", text:"Localización") {
                viewModel.openAppSettings()
            }
        }
        .padding(.horizontal)
    }
}


import SwiftUI

struct ChangeAllergensView: View {
    @Environment(AllergenPreferencesStore.self) private var prefs
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            VStack(spacing: 16) {
                ScrollView {
                    VStack(spacing: 8) {
                        Spacer()
                        AngledSectionHeader(title: "ALÉRGENOS")
                        AllergenGridView(
                            items: AllergenOrPreference.allCases.filter { !$0.isPreference },
                            selected: prefs.selected.filter { !$0.isPreference },
                            onToggle: prefs.toggle
                        )
                        AngledSectionHeader(title: "PREFERENCIAS ALIMENTARIAS")
                        FoodPreferenceSelector(
                            selected: prefs.selected.filter(\.isPreference),
                            onToggle: prefs.toggle
                        )
                        Spacer()
                    }
                }
            }
            .background(Color.appBackground.ignoresSafeArea())
            
            VStack {
                Spacer()
                Button(action: {
                    dismiss()
                }) {
                    Text("Confirmar")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.primaryAction)
                        .foregroundColor(.white)
                        .cornerRadius(16)
                        .padding(.horizontal)
                }
                .padding(.bottom, 24) // Margen inferior
            }
        }
    }
}

#Preview {
    let prefs = AllergenPreferencesStore()
    return ChangeAllergensView()
        .environment(prefs)
}

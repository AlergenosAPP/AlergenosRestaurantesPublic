import SwiftUI

struct OnBoardingPageTwo: View {
    @Environment(AllergenPreferencesStore.self) private var prefs
    
    var body: some View {
        
        VStack(spacing: 16) {
            Text("Ayúdanos a filtrar por ti")
                .font(.title).bold().padding(.top)
            
            Text("Selecciona los alérgenos y preferencias alimentarias para ofrecerte opciones seguras y adaptadas a ti.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondaryText)
                .padding(.horizontal)
            
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
    }
}

#Preview {
    let prefs = AllergenPreferencesStore()
    return OnBoardingPageTwo()
        .environment(prefs)
}

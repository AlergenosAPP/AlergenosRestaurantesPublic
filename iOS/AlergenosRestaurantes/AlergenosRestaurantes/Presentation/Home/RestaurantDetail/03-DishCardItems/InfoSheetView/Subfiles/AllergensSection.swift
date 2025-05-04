//
//  AllergensSection.swift
//  AlergenosRestaurantes
//
//  Created by Javier Muñoz on 27/4/25.
//


import SwiftUI

struct AllergensSection: View {
    let containsAllergens: [AllergenOrPreference]
    let possibleTraces: [AllergenOrPreference]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("Alérgenos")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.textPrimary)
                .padding(.horizontal, 24)
            
            if containsAllergens.isEmpty && possibleTraces.isEmpty {
                Text("Este plato no tiene alergenos o trazas.")
                    .font(.system(size: 16))
                    .foregroundColor(.secondaryText)
                    .padding(.horizontal, 24)
            } else {
                VStack(alignment: .leading, spacing: 12) {
                    SectionHeader(title: "Contiene", count: containsAllergens.count)
                    
                    if containsAllergens.isEmpty {
                        Text("No contiene alérgenos")
                            .font(.system(size: 16))
                            .foregroundColor(.secondaryText)
                            .padding(.horizontal, 24)
                    } else {
                        AllergenScrollView(allergens: containsAllergens)
                    }
                }
                
                if !possibleTraces.isEmpty {
                    VStack(alignment: .leading, spacing: 12) {
                        SectionHeader(title: "Puede contener", count: possibleTraces.count)
                        AllergenScrollView(allergens: possibleTraces)
                    }
                }
            }
        }
    }
    
    private func SectionHeader(title: String, count: Int) -> some View {
        HStack {
            Text("\(title): \(count)")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.textPrimary)
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

#if DEBUG
import SwiftUI

struct AllergensSection_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // 🟢 Estado: Con alérgenos y trazas
            AllergensSection(
                containsAllergens: [
                    AllergenOrPreference.mockGluten,
                    AllergenOrPreference.mockLactose
                ],
                possibleTraces: [
                    AllergenOrPreference.mockNuts
                ]
            )
            .previewDisplayName("Con alérgenos y trazas")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))

            // ⚪️ Estado: Sin alérgenos ni trazas
            AllergensSection(
                containsAllergens: [],
                possibleTraces: []
            )
            .previewDisplayName("Sin alérgenos ni trazas")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
        }
    }
}
#endif



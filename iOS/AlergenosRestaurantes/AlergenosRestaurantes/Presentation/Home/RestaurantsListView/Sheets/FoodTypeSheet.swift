import SwiftUI
import Kingfisher

struct FoodTypeSheet: View {
    @Binding var isPresented: Bool
    @Binding var selectedCategories: [RestaurantsCategory]

    let categories: [RestaurantsCategory]
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Spacer()
                Button(action: { isPresented = false }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.primary)
                        .padding()
                }
            }

            Text("Tipo de comida")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal)
                .padding(.bottom, 8)

            ScrollView {
                VStack(spacing: 0) {
                    LazyVGrid(columns: columns, spacing: 8) {
                        ForEach(categories) { category in
                            Button(action: {
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    if selectedCategories.contains(category) {
                                        selectedCategories.removeAll { $0 == category }
                                    } else {
                                        selectedCategories.append(category)
                                    }
                                }
                            }) {
                                ZStack {
                                    if selectedCategories.contains(category) {
                                        RoundedRectangle(cornerRadius: 30)
                                            .fill(Color.primaryAction)
                                            .frame(width: 80, height: 80)
                                            .offset(y: -8)
                                            .rotationEffect(.degrees(12))
                                            .transition(.opacity)
                                    }

                                    VStack(spacing: 4) {
                                        if let photo = category.photo,
                                           let url = URL(string: "http://localhost:8080/\(photo.trimmingCharacters(in: CharacterSet(charactersIn: "/")))") {
                                            KFImage(url)
                                                .placeholder {
                                                    ProgressView()
                                                }
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 80, height: 80)
                                                .scaleEffect(selectedCategories.contains(category) ? 1.10 : 1.0)
                                                .rotationEffect(.degrees(selectedCategories.contains(category) ? 2 : 0))
                                                .animation(.easeInOut(duration: 0.3), value: selectedCategories)
                                        }

                                        Text(category.name ?? "")
                                            .font(.caption)
                                            .fontWeight(selectedCategories.contains(category) ? .bold : .regular)
                                            .foregroundColor(.primary)
                                    }
                                }
                                .padding(.vertical, 6)
                            }
                        }
                    }
                    Spacer().frame(height: 80)
                }
            }
            .overlay(
                LinearGradient(
                    gradient: Gradient(colors: [Color.clear, Color.white.opacity(0.95)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(height: 60)
                .allowsHitTesting(false),
                alignment: .bottom
            )

            Spacer()

            Button("Mostrar resultados") {
                isPresented = false
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.primaryAction)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal)
            .padding(.bottom)
        }
        .presentationDetents([.large])
    }
}

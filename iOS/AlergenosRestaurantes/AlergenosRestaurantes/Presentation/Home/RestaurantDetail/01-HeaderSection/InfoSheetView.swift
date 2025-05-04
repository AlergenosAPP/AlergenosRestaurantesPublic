import SwiftUI
import Kingfisher

struct InfoSheetView: View {
    var restaurant: Restaurant

    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                Text("Información del restaurante")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)

                content
                    .padding(.horizontal, 32)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .transition(.opacity)
            }
            .padding(.bottom, 20)
        }
        .background(Color.white)
        .cornerRadius(15)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .presentationDragIndicator(.visible)
    }

    private var content: some View {
        VStack(alignment: .leading, spacing: 32) {
            restaurantHeader

            section(title: "Dirección", icon: "location.fill") {
                Text(restaurant.address)
                    .font(.body)
                    .foregroundStyle(.primary)
            }

            Divider()

            section(title: "Contacto") {
                contactRow(icon: "phone.fill", text: restaurant.phoneNumber?.description ?? "No disponible")
                contactRow(icon: "envelope.fill", text: restaurant.mail ?? "No disponible")
            }

            Divider()

            section(title: "Última fecha de actualización Alergenos") {
                Text(restaurant.modifiedAt, style: .date)
                    .font(.body)
                    .foregroundStyle(.primary)
            }
        }
    }

    private var restaurantHeader: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 12) {
                Text(restaurant.restaurantParentName)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)

                if let url = URL(string: "http://localhost:8080/\(restaurant.restaurantLogo)") {
                    KFImage(url)
                        .placeholder { ProgressView() }
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
            }

            Text(restaurant.name)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.primary)
        }
    }

    private func section<Content: View>(title: String, icon: String? = nil, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)

                if let icon = icon {
                    Image(systemName: icon)
                        .foregroundStyle(.primary)
                }
            }

            content()
        }
    }

    private func contactRow(icon: String, text: String) -> some View {
        HStack(spacing: 8) {
            Image(systemName: icon)
                .foregroundStyle(.primary)

            Text(text)
                .foregroundStyle(.primary)
        }
    }
}

#if DEBUG
import SwiftUI

struct InfoSheetView_Previews: PreviewProvider {
    static var previews: some View {
        InfoSheetView(
            restaurant: Restaurant(
                id: UUID(),
                restaurantParentId: UUID(),
                restaurantParentName: "Grupo Placeholder",
                name: "Placeholder Burger",
                restaurantLogo: "https://via.placeholder.com/100", // Logo de stock
                restaurantBackground: "https://via.placeholder.com/600x400", // Fondo de stock
                dishesCount: 10,
                safeDishesCount: 5,
                latitude: 40.0,
                longitude: -3.0,
                address: "123 Calle Placeholder, Madrid",
                mail: "contacto@placeholderburger.com",
                phoneNumber: 123456789,
                sponsored: 1,
                price: 3,
                createdAt: Date(),
                modifiedAt: Date(),
                dishes: [],
                categories: []
            )
        )
        .previewLayout(.sizeThatFits)
    }
}
#endif

import SwiftUI
import Kingfisher

struct DishCard: View {
    let dish: Dish
    @State private var isShowingDishInfo = false

    func allergenStatusColor() -> Color {
        if dish.hasAllergen {
            return .red
        } else if dish.hasTraces {
            return .orange
        } else {
            return .green
        }
    }

    var body: some View {
        HStack(alignment: .top) {
            ZStack(alignment: .topLeading) {
                KFImage(URL(string: "http://localhost:8080/\(dish.photo)"))
                    .placeholder { ProgressView() }
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(8)
                    .clipped()

                HStack(spacing: 4) {
                    if dish.isSpicy {
                        Image("spicy")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    if dish.isVegetarian {
                        Image("vegetariano")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    if dish.isVegan {
                        Image("vegano")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                }
                .padding(2)
                .background(Color.white.opacity(0.7))
                .cornerRadius(6)
                .padding([.top, .leading], 2)
                .offset(y: -10)
            }

            VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 6) {
                            allergenStatusColor()
                                .frame(width: 10, height: 10)
                                .clipShape(Circle())

                            Text(dish.name)
                                .font(.headline)
                                .lineLimit(2)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                    }

                    Spacer()

                    Button(action: {
                        isShowingDishInfo = true
                    }) {
                        Image(systemName: "info.circle")
                            .foregroundColor(.gray)
                            .padding(8)
                            .background(Circle().fill(Color.lightGray))
                            .frame(width: 30, height: 30)
                    }
                }

                Text(dish.description)
                    .font(.subheadline)
                    .lineLimit(5)
                    .truncationMode(.tail)
                    .foregroundColor(.gray)

                Spacer()
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.leading, 12)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .sheet(isPresented: $isShowingDishInfo) {
            DishInfoSheetView(model: DishDetailModel(dish: dish))
        }
    }
}

#if DEBUG
import SwiftUI

struct DishCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // 🍔 Plato con alérgenos, picante
            DishCard(
                dish: Dish(
                    id: UUID(),
                    name: "Hamburguesa Completa",
                    photo: "https://via.placeholder.com/600x400",
                    description: "Una hamburguesa deliciosa con carne 100% vacuno, lechuga, tomate y queso cheddar fundido.",
                    ingredients: "Carne, pan brioche, lechuga, tomate, queso cheddar",
                    dishCategory: DishCategory(
                        id: UUID(),
                        name: "Hamburguesas",
                        order: 1,
                        createdAt: nil,
                        modifiedAt: nil
                    ),
                    energyKj: 2500,
                    energyKcal: 600,
                    fat: 30,
                    saturatedFat: 12,
                    carbohydrates: 40,
                    sugars: 5,
                    fibers: 4,
                    proteins: 25,
                    salt: 2,
                    allergens: [1, 2],
                    traces: [3],
                    hasTraces: true,
                    hasAllergen: true,
                    isVegetarian: false,
                    isVegan: false,
                    isSpicy: true,
                    createdAt: Date(),
                    modifiedAt: Date()
                )
            )
            .previewDisplayName("🍔 Hamburguesa Completa")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))

            // 🥗 Plato vegetariano, no picante
            DishCard(
                dish: Dish(
                    id: UUID(),
                    name: "Ensalada Veggie",
                    photo: "https://via.placeholder.com/600x400",
                    description: "Una ensalada fresca con lechuga, tomate cherry, aguacate y semillas.",
                    ingredients: "Lechuga, tomate cherry, aguacate, semillas de girasol",
                    dishCategory: DishCategory(
                        id: UUID(),
                        name: "Ensaladas",
                        order: 2,
                        createdAt: nil,
                        modifiedAt: nil
                    ),
                    energyKj: 800,
                    energyKcal: 200,
                    fat: 12,
                    saturatedFat: 2,
                    carbohydrates: 15,
                    sugars: 3,
                    fibers: 6,
                    proteins: 8,
                    salt: 0.5,
                    allergens: [],
                    traces: [],
                    hasTraces: false,
                    hasAllergen: false,
                    isVegetarian: true,
                    isVegan: true,
                    isSpicy: false,
                    createdAt: Date(),
                    modifiedAt: Date()
                )
            )
            .previewDisplayName("🥗 Ensalada Veggie")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
        }
    }
}
#endif

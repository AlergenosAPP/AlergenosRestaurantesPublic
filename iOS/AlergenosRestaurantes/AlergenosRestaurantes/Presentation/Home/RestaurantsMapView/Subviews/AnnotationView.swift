import SwiftUI
import Kingfisher

struct AnnotationView: View {
    let restaurant: Restaurant
    let onTap: () -> Void
    var body: some View {
        Button(action: onTap) {
            if let rawPath = restaurant.restaurantLogo
                    .trimmingCharacters(in: CharacterSet(charactersIn: "/"))
                    .addingPercentEncoding(withAllowedCharacters: .urlPathAllowed),
               let url = URL(string: "http://localhost:8080/\(rawPath)") {
                KFImage(url)
                    .placeholder {
                        Image(systemName: "fork.knife.circle.fill")
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(4)
                            .background(Color.white)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    }
                    .fade(duration: 0.3)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(6)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
            }
        }
    }
}


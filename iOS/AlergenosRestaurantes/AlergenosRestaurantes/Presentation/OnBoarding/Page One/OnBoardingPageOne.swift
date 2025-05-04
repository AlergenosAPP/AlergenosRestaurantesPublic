import SwiftUI

struct OnBoardingPageOne: View {
    var body: some View {
        ZStack {
            Color.appBackground.ignoresSafeArea()
            VStack(spacing: 24) {
                ZStack(alignment: .top) {
                    ZStack {
                        Rectangle()
                            .fill(Color.primaryAction)
                            .frame(width: UIScreen.main.bounds.width * 1.5)
                            .rotationEffect(.degrees(-6))
                            .offset(y: -150)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 600)
                    .clipped()
                    .ignoresSafeArea()
                    VStack(spacing: 16) {
                        Text("¿QUÉ TE APETECE HOY?")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(32)
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180)
                        Image("imageOnboarding1")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 220)
                        
                        
                        Text("Bienvenido")
                            .font(.title)
                            .fontWeight(.semibold)
                        Text("Porque saber lo que comes es salud.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondaryText)
                        Text("AllerCheck ofrece información orientativa y no se hace responsable por posibles errores. Verifica siempre con el proveedor o establecimiento.")
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondaryText)
                            .lineLimit(nil)
                            .padding(.horizontal)
                    }
                    .padding(.horizontal, 24)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    OnBoardingPageOne()
}


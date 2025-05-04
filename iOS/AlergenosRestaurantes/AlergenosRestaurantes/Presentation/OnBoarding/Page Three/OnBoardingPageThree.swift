import SwiftUI

struct OnBoardingPageThree: View {
    
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
                    .frame(width: UIScreen.main.bounds.width, height: 400)
                    .clipped()
                    .ignoresSafeArea()
                    
                    VStack(spacing: 16) {
                        Spacer()
                        
                        Image("imageOnboarding2")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .padding(.top, 32)
                        
                        Spacer()
                        
                        Text("Mejora tu experiencia")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 8)
                        
                        Text("Activa tu ubicación para mostrarte los establecimientos más cercanos y relevantes para ti.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondaryText)
                            .padding(.horizontal)
                        
                        Text("Tu ubicación se usará solo para mejorar tu experiencia")
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondaryText)
                            .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 12)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    OnBoardingPageThree()
}

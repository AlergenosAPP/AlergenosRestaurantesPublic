import SwiftUI

struct NavButton: View {
    let systemImage: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: systemImage)
                .foregroundColor(.gray)
                .padding(10)
                .background(Circle().fill(Color.white))
                .frame(width: 50, height: 50)
                .font(.title3)
        }
    }
}

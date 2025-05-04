import SwiftUI

struct DragIndicator: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 2)
            .fill(Color.secondaryText)
            .frame(width: 40, height: 4)
            .frame(maxWidth: .infinity)
            .padding(.top, 12)
            .padding(.bottom, 8)
    }
}


#if DEBUG
import SwiftUI

struct DragIndicator_Previews: PreviewProvider {
    static var previews: some View {
        DragIndicator()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
    }
}
#endif

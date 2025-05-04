import SwiftUI

struct ErrorSelectorMenuView: View {
    @Binding var selectedError: ReportErrorForm.ErrorType?

    var body: some View {
        Menu {
            ForEach(ReportErrorForm.ErrorType.allCases) { error in
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        selectedError = error
                    }
                }) {
                    Text(error.rawValue).tag(Optional(error))
                }
            }
        } label: {
            HStack {
                Group {
                    if let selectedError {
                        Text(selectedError.rawValue)
                            .foregroundColor(.primary)
                            .transition(.opacity)
                    } else {
                        Text("Selecciona un error")
                            .foregroundColor(.gray)
                            .transition(.opacity)
                            .id("placeholder")
                    }
                }
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(.gray)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
        .animation(.easeInOut(duration: 0.3), value: selectedError)
    }
}

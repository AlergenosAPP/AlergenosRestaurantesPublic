//
//  DetailRestaurantLoadingView.swift
//  AlergenosRestaurantes
//
//  Created by Javier Muñoz on 27/4/25.
//


import SwiftUI

struct DetailRestaurantLoadingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Color.gray.opacity(0.3)
                    .frame(height: 250)
                    .cornerRadius(12)
                    .padding()
                    .shimmerEffect()

                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 30)
                    .padding(.horizontal)
                    .shimmerEffect()

                ForEach(0..<3, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 80)
                        .padding(.horizontal)
                        .shimmerEffect()
                }
            }
            .padding(.top, 50)
        }
    }
}

#if DEBUG
struct DetailRestaurantLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRestaurantLoadingView()
    }
}
#endif
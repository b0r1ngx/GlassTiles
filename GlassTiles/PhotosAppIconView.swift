import SwiftUI

// By Qwen3.7-Max
struct PhotosAppIconView: View {
    var body: some View {
        ZStack {
            // 1. App Icon Background
            // Using continuous corners for that authentic Apple squircle shape
            RoundedRectangle(cornerRadius: 54, style: .continuous)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 5)
            
            // 2. The Flower
            ZStack {
                ForEach(0 ..< 8) { index in
                    Capsule()
                        .fill(
                            LinearGradient(
                                // Gradient from the petal color at the outer edge to White at the center
                                colors: [petalColors[index], .white],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .frame(width: 64, height: 120)
                        // Offset by half the height so the bottom edge (white) sits exactly at the center (0,0)
                        .offset(y: -60)
                        // Rotate each petal around the center point
                        .rotationEffect(.degrees(Double(index) * 45))
                        // Opacity allows the colored edges to blend vibrantly where they overlap
                        .opacity(0.85)
                }
            }
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    PhotosAppIconView()
}

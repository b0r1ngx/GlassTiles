import SwiftUI

struct OvalGlassCard: View {
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "sparkles")
                .font(.title)
                .foregroundStyle(.white)
            
            Text("Liquid Card")
                .font(.headline)
                .foregroundStyle(.white.opacity(0.9))
        }
        .padding(30)
        // Clip the content into an oval / capsule shape
        .clipShape(Capsule())
        // Apply Apple's Liquid Glass effect (iOS 26+)
        .glassEffect()
        
        // Fallback or custom styling if you want to control it manually:
//         .background(.ultraThinMaterial)
//         .overlay(Capsule().stroke(.white.opacity(0.3), lineWidth: 1))
    }
}

#Preview {
    OvalGlassCard()
}

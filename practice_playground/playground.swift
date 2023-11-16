import SwiftUI

struct playground: View {
    var body: some View {
        WavePattern()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(height: 200)
            .edgesIgnoringSafeArea(.all)
    }
}

struct WavePattern: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Define the points for your custom wave shape
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY))

        // Add the wave with a series of curves
        for i in stride(from: 0, through: rect.width, by: 60) {
            path.addQuadCurve(to: CGPoint(x: i + 30, y: rect.midY),
                              control: CGPoint(x: i + 15, y: rect.midY - 30))
            path.addQuadCurve(to: CGPoint(x: i + 60, y: rect.midY),
                              control: CGPoint(x: i + 45, y: rect.midY + 30))
        }

        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.closeSubpath()

        return path
    }
}

//@main
//struct MyApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

struct playground_Previews: PreviewProvider {
    static var previews: some View {
        playground()
    }
}

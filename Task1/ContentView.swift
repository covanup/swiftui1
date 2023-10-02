import SwiftUI

struct ContentView: View {
    let bottomInset: CGFloat = 50

    var body: some View {
        TabView {
            ScrollView {
                ForEach(0 ... 50, id: \.self) { index in
                    Text("\(index)")
                        .frame(maxWidth: .infinity)
            }
            }
            .safeAreaInset(edge: .bottom) {
                Rectangle()
                    .frame(height: bottomInset)
                    .foregroundColor(.red)
                    .opacity(0.8)
            }
            .tabItem { Label(
                title: { Text("First") },
                icon: { Image(systemName: "star.fill") }
            ) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct LegalLinks: View {
    var body: some View {
        Link("Privacy Policy", destination: URL(string: "https://example-app.dev/privacy")!)
    }
}

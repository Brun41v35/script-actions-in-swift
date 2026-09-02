import SwiftUI

struct ContentView: View {

    var list = [
        "foo",
        "foo",
        "foo"
    ]

    var body: some View {
        Text ("Foo")
            .onAppear { print(list.count) }
    }
}

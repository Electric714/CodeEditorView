import CodeEditorView
import LanguageSupport
import SwiftUI

struct ContentView: View {
  @State private var text: String = "import SwiftUI\n\nstruct HelloWorld: View {\n  var body: some View {\n    Text(\"Hello, CodeEditorView!\")\n  }\n}\n"
  @State private var position: CodeEditor.Position = CodeEditor.Position()
  @State private var messages: Set<TextLocated<Message>> = []

  @Environment(\.colorScheme) private var colorScheme

  var body: some View {
    CodeEditor(
      text: $text,
      position: $position,
      messages: $messages,
      language: .swift()
    )
    .environment(\.codeEditorTheme,
                 colorScheme == .dark ? Theme.defaultDark : Theme.defaultLight)
    .padding()
  }
}

#Preview {
  ContentView()
}

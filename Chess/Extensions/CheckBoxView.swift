import SwiftUI

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.white) : Color.white)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

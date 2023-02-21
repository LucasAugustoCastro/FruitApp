//
//  SourceLinkView.swift
//  Fruits App
//
//  Created by Lucas Castro on 18/02/23.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    var fruit:Fruit
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com/wiki/\(fruit.title)")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}
// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(fruit: fruitsData[0]).previewLayout(.sizeThatFits)
            .padding()
    }
}

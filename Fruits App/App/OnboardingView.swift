//
//  OnboardingView.swift
//  Fruits App
//
//  Created by Lucas Castro on 25/01/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    // MARK: - BODY
    var body: some View {
        TabView{

            ForEach(fruits[0...5], id:\.id) { fruit in
//                FruitCardView()
                FruitCardView(fruit: fruit)
            }

        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
 
    }
}
// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}

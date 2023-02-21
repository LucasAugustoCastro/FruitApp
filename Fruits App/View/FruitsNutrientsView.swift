//
//  FruitsNutrientsView.swift
//  Fruits App
//
//  Created by Lucas Castro on 19/02/23.
//

import SwiftUI

struct FruitsNutrientsView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients:[String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    // MARK: - BODY
    var body: some View {
        GroupBox{
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0 ..< nutrients.count, id:\.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }//:HSTACK
                }//:FOREACH
            }//:DISCLOSUREGROUP
        }//:GROUPBOX
    }
}
// MARK: - PREVIEW
struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit:fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
        
    }
}

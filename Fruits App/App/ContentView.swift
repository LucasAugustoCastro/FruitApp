//
//  ContentView.swift
//  Fruits App
//
//  Created by Lucas Castro on 24/01/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSetting: Bool = false
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationStack{
            List {
                ForEach(fruits.shuffled(), id:\.id) { fruit in
                    NavigationLink(value: fruit){
//                    NavigationLink(destination:FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                        
                }
            }
            .navigationBarTitle("Fruits")
//            .navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: Fruit.self) { fruit in
                FruitDetailView(fruit: fruit)
            }
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing) {
                    Button {
                        isShowingSetting = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSetting) {
                        SettingView()
                    }

                }//: TOOLBARITEM
            }//: TOOLBAR
        }//: NAVIGATIONVIEW
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

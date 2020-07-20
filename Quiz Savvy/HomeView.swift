//
//  HomeView.swift
//  Quiz Savvy
//
//  Created by 青木智大 on 2020/06/28.
//  Copyright © 2020 青木智大. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection){
            TopView()
                .tabItem {
                    VStack {
                        Image(systemName: "play.rectangle.fill")
                        Text("Top")
                    }
                }.tag(0)
           
            ChooseView(items: situationStore)
                .tabItem {
                    VStack {
                        Image(systemName: "a.circle.fill")
                        Text("Quiz")
                    }
                }.tag(1)
           
           FavoriteView()
                .tabItem {
                    VStack {
                        Image(systemName: "bookmark.fill")
                        Text("Favorite")
                    }
                }.tag(2)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}












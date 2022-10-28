//
//  AppTabBarView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 27/10/22.
//

import SwiftUI

// Generics
// ViewBuilder
// PreferenceKey
// MatchedGeometryEffect

struct AppTabBarView: View {
    
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            TestTabView(text: "Profile")
                .tabBarItem(tab: .profile, selection: $tabSelection)
            
            TestTabView(text: "Messages")
                .tabBarItem(tab: .messages, selection: $tabSelection)

            TestTabView(text: "Arun's Home")
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            TestTabView(text: "favorites")
                .tabBarItem(tab: .favorites, selection: $tabSelection)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            Color.orange
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
    
}

struct TestTabView: View {
    
    let text: String
    @State private var textFieldText: String = "Custom TabBar"
    
    init(text: String) {
        self.text = text
        print("INIT" + text)
    }
    
    var body: some View {
        VStack {
            Text(text)
                .onAppear {
                    print("ONAPPEAR" + text)
            }
            TextField("Type something...", text: $textFieldText)
                .foregroundColor(.white)
                .disableAutocorrection(true)
                .padding()
                .background(Color.purple)
                .cornerRadius(20)
                .padding()
            
        }
    }
}

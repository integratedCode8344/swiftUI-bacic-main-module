//
//  AppNavBarView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination:
                                Text("Destination")
                                .customNavigationTitle("Second Screen")
                                .customNavigationSubtitle("Subtitle should be showing!!!!")
                ) {
                    Text("Navigate")
                }
            }
            .customNavBarItems(title: "New title!", subtitle: "Subtitle!", backButtonHidden: true)
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                
                NavigationLink(
                    destination:
                        Text("Destination")
                        .navigationTitle("Title 2")
                        .navigationBarBackButtonHidden(false)
                    ,
                    label: {
                        Text("Navigate")
                    })
                
            }
            .navigationTitle("Nav title here")
        }
    }
}

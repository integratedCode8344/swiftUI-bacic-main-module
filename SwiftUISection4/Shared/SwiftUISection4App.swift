//
//  SwiftUISection4App.swift
//  Shared
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

@main
struct SwiftUISection4App: App {
    
    @State var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
//            DragGestureBootcamp2()
            
            NavigationView {
                ContentView()
            }
            
//            NavigationView {
//                ListView()
//            }
//            .environmentObject(listViewModel)
            

//                AppNavBarView()

            
        }
    }
}

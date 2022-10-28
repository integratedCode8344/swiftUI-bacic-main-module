//
//  ContentView.swift
//  Shared
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var topics: [String] = ["ImageView", "StacksView", "ScrollView", "StateVariableView", "ListSampleView", "ButtonsView", "SearchableListView", "RepresentationView", "GridView", "TextEditor", "ScrollViewReader", "ContextMenu", "AsyncImage", "tabBar", "Tinder", "longPress Gestures", "Magnification gesture", "drag Gesture","rotation gesture", "Picker", "alert", "sheet", "animation & transition 1", "animation & transition 2", "animation & transition 3", "Path & shapes 1", "Path & shapes 2", "Path & shapes 3"]
    
    var body: some View {
        List {
            ForEach(0..<topics.count, id: \.self) { index in
                let item = topics[index]
                NavigationLink(destination: {
                    RetuenView(index: index)
                }, label: {
                    Text(" \(index + 1) \(item)")
                })
            }
        }
        .navigationTitle("code")
    }
    func RetuenView(index : Int) -> AnyView {
        if index == 0 {
            return AnyView(ImagesView())
        } else if index == 1 {
            return AnyView(StacksView())
        } else if index == 2 {
            return AnyView(ScrollViewView())
        } else if index == 3 {
            return AnyView(StateVariableView())
        } else if index == 4 {
            return AnyView(ListSampleView())
        } else if index == 5 {
            return AnyView(ButtonsView())
        } else if index == 6 {
            return AnyView(SearchableListView())
        } else if index == 7 {
            return AnyView(RepresentationView())
        } else if index == 8 {
            return AnyView(GridView())
        } else if index == 9 {
            return AnyView(TextEditorView())
        } else if index == 10 {
            return AnyView(ScrollViewReaderBootcamp())
        } else if index == 11 {
            return AnyView(ContextMenu())
        } else if index == 12 {
            return AnyView(AsyncImageView())
        } else if index == 13 {
            return AnyView(AppTabBarView())
        } else if index == 14 {
            return AnyView(Gestures_animation())
        } else if index == 15 {
            return AnyView(LongPressGestureBootcamp())
        } else if index == 16 {
            return AnyView(MagnificationGestureBootcamp())
        } else if index == 17 {
            return AnyView(DragGestureBootcamp())
        } else if index == 18 {
            return AnyView(RotationGestureBootcamp())
        } else if index == 19 {
            return AnyView(PickerView())
        } else if index == 20 {
            return AnyView(AlertView())
        } else if index == 21 {
            return AnyView(SheetView())
        } else if  index == 22 {
            return AnyView(AnimationView())
        } else if index == 23 {
            return AnyView(TransitionView())
        } else if index == 24 {
            return AnyView(Animation1View())
        } else if index == 25 {
            return AnyView(ShapesView())
        } else if index == 26 {
            return AnyView(PathView())
        } else if index == 27 {
            return AnyView(Path1View())
        } else {
            return AnyView(ContentView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ContentView1: View {
    var body: some View {
        VStack {
            
        }
    }
}

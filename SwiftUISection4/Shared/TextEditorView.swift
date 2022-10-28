//
//  TextEditorView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 27/10/22.
//

import SwiftUI

struct TextEditorView: View {
    
    @State private var profileText = "@me "
    @State var comments: [String] = []
    
    var body: some View {
//        NavigationView {
            VStack {
                TextEditor(text: $profileText)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                    .navigationTitle("Write something...")
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        List {
                            ForEach(comments, id: \.self) { comment in
                                Text(comment)
                            }
                        }                    }, label: {
                            Text("see all comments")
                        })
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        comments.append(profileText)
                        print(comments)
                    }, label: {
                        Text("post")
                    })
                }
            }
            .navigationTitle("text editor")
            
//        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}

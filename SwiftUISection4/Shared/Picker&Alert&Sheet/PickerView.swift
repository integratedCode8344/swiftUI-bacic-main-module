//
//  PickerView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct PickerView: View {
    @State var selection : String = ""
    var body: some View {
        VStack {
            Picker("", selection: $selection) {
                ForEach(18..<20) { age in
                    Text("\(age)")
                        .tag("\(age)")
                }
            }
            .accentColor(.blue)
            .pickerStyle(SegmentedPickerStyle())
            
            Picker("", selection: $selection) {
                ForEach(18..<20) { age in
                    Text("\(age)")
                        .tag("\(age)")
                }
            }
            .pickerStyle(WheelPickerStyle())
            
            HStack {
                Text("Age")
                Text(selection)
            }
            Button(action: {
                
            }, label: {
                Text("click me")
            })
        }
        .navigationTitle("picker")
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}

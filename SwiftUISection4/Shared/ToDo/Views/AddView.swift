//
//  AddView.swift
//  TodoList (iOS)
//
//  Created by Arun_Skyraan on 09/10/22.
//

import SwiftUI

struct AddView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @Environment(\.presentationMode) var presentationMode
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                TextField("type something...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                Button(action: saveButtonPressed, label: {
                    Text("save".uppercased())
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(10)
                })
            }
            .padding()
        }
        .navigationTitle("Add")
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Your new todo item must be at least '3' characters long!"))
        })
        
    }
    
    func saveButtonPressed() {
        if textAppropriate() {
            listViewModel.addItem(title: self.textFieldText)
            presentationMode.wrappedValue.dismiss()
        } else {
            
        }
    }
    func textAppropriate() -> Bool {
        if textFieldText.count < 3 {
            showAlert.toggle()
            return false
        }
        return true
    }

}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}

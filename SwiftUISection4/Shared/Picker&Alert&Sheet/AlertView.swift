//
//  AlertView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct AlertView: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea(.all)

            VStack {
                Button("BUTTON 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                .padding()

                Button("BUTTON 2") {
                    alertType = .success
                    showAlert.toggle()
                }
                .foregroundColor(.white)
                .padding()
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
        .navigationTitle("alert")
    }
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {

            }))
        default:
            return Alert(title: Text("ERROR"))
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}

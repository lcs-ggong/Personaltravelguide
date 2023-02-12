//
//  Guide.swift
//  Personaltravelguide
//
//  Created by Grace Gong on 2023-02-11.
//

import SwiftUI

struct Guide: View {
    @State var interest = true
   
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Divider()
                .padding(.vertical, 10)
            
            Text("Intersts")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
            Text("Choose your interests")
                .italic()
                .padding(.bottom, 5)
            
            
            
            HStack{
                // Example usage #1 - Menu
                Picker(selection: $interest,
                       label: Text("Picker Name"),
                       content: {
                    
                   
                    Text("natural landscape").tag(false)
                    Text("beach").tag(true)
                    Text("rainforset").tag(false)
                    Text("mordern city").tag(false)
                   
                    
                })
                .pickerStyle(.inline)
            }
            
            
            
            
            
            
            
            Text("interest is: \(interest ? "true" : "false")")
            
            Text("Country")
                .bold()
                .font(.title)
                .padding(.bottom, 3)
            
          
            
            Toggle("Mexico", isOn: .constant(true))
        
          Toggle("Australia", isOn: .constant(false))
          
            Toggle("Switzerland", isOn: .constant(false))
            
            Toggle("America", isOn: .constant(false))

            
            
            
        }
        .padding()
    }
}
struct Guide_Previews: PreviewProvider {
    static var previews: some View {
        Guide()
    }
}

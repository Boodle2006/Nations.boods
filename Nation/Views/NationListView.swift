//
//  ContentView.swift
//  Nation
//
//  Created by James Goldston on 9/5/21.
//

import SwiftUI

struct NationListView: View {
    
    @EnvironmentObject var model: Content
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    ForEach(model.Nations) { i in
                        
                            HStack {
                                
                                Text(i.name).bold().padding()
                                
                                HStack {
                                    ForEach (0...i.attributes.militaryMight/40, id: \.self) { k in
                                        
                                        
                                        Image(systemName: "xmark.seal.fill")
                                        
                                        
                                    }
                                }.padding()
                                
                                HStack {
                                    ForEach (0...i.attributes.diplomacyIntrest/2, id: \.self) { k in
                                        
                                        
                                        Image(systemName: "flag.circle.fill")
                                        
                                        
                                    }
                                }
                                
                            }
                        
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NationListView().environmentObject(Content())
    }
}

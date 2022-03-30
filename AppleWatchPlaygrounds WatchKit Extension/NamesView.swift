//
//  NamesView.swift
//  AppleWatchPlaygrounds WatchKit Extension
//
//  Created by Giovanni Madalozzo on 30/03/22.
//

import SwiftUI

struct NamesView: View {
    
    @ObservedObject var modelData: ModelData
    @State var triggerAlert: Bool = false
    
    var body: some View {
        VStack {
            List {
                ForEach(modelData.playerList, id: \.name) { player in
                    HStack {
                        Text(player.name)
                        
                        Spacer()
                        
                        Text(player.team)
                    }
                    .onTapGesture {
                        modelData.selectedPlayer = player
                        triggerAlert = true
                    }
                    .alert("Jogador selecionado!", isPresented: $triggerAlert) {
                        
                    }
                }
            }
        }
    }
}

//struct NamesView_Previews: PreviewProvider {
//    static var previews: some View {
//        NamesView(modelData: <#ModelData#>)
//    }
//}

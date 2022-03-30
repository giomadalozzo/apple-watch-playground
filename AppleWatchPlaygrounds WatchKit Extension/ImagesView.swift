//
//  ImagesView.swift
//  AppleWatchPlaygrounds WatchKit Extension
//
//  Created by Giovanni Madalozzo on 30/03/22.
//

import SwiftUI

struct ImagesView: View {
    @ObservedObject var modelData: ModelData
    var nothingToShow: UIImage = UIImage(named: "nothing")!
    
    var body: some View {
        GeometryReader{ geo in
            VStack(alignment: .center){
                Image(uiImage: modelData.selectedPlayer?.photo ?? nothingToShow)
                    .resizable()
                    .frame(width: geo.size.width, height: geo.size.height * 0.7)
                Spacer()
                Text(modelData.selectedPlayer?.name ?? "Select a player!")
                Button {
                    modelData.selectedPlayer = nil
                } label: {
                    Text("Clear player selection")
                }
                
            }
        }
    }
}

//struct ImagesView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImagesView()
//    }
//}

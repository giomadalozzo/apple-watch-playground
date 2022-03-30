//
//  ContentView.swift
//  AppleWatchPlaygrounds WatchKit Extension
//
//  Created by Giovanni Madalozzo on 30/03/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var modelData: ModelData = ModelData()
    var body: some View {
        TabView{
            NamesView(modelData: modelData).tag(0)
            ImagesView(modelData: modelData).tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

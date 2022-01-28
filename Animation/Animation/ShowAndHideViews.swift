//
//  ShowAndHideViews.swift
//  Animation
//
//  Created by naseem on 28/01/2022.
//

import SwiftUI

struct ShowAndHideViews: View {
    @State private var isShowingRed = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))

            }
            
        }
    }
}

struct ShowAndHideViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowAndHideViews()
    }
}

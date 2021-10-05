//
//  backgroundView.swift
//  Wallet Example
//
//  Created by Arthur Ford on 10/5/21.
//

import SwiftUI

struct backgroundView: View {
    var body: some View {
        ZStack {
            bgGradient
                .edgesIgnoringSafeArea(.all)
            Ellipse()
                .fill(Color.darkBlue)
                .offset(x: -UIScreen.main.bounds.width, y: -UIScreen.main.bounds.width+50)
            .frame(width: 900)
        }
    }
}

struct backgroundView_Previews: PreviewProvider {
    static var previews: some View {
        backgroundView()
    }
}

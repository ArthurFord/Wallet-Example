//
//  HeaderView.swift
//  Wallet Example
//
//  Created by Arthur Ford on 10/5/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(systemName: "person")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "wallet.pass")
                    .font(.largeTitle)
            }
            .padding(.vertical, 30)
            HStack {
                Text("Wallets")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "chevron.up.circle")
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }.padding()
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

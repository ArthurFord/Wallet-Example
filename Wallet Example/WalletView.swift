    //
    //  WalletView.swift
    //  Wallet Example
    //
    //  Created by Arthur Ford on 10/5/21.
    //

import SwiftUI

struct WalletView: View {
    var body: some View {
        ZStack {
            backgroundView()
            VStack {
                VStack {
                    HeaderView()
                        .frame(width: UIScreen.main.bounds.width, height: 200)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(currencies, id: \.self) { money in
                                Text(money)
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .blendMode(.difference)
                                
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .frame(width: UIScreen.main.bounds.width)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<3) {_ in
                                AccountCardView()
                                    .padding(.vertical)
                            }
                        }
                    }
                    
                    .frame(width: UIScreen.main.bounds.width)
                    VStack {
                        HStack {
                            Text("Pending")
                                .font(.title)
                                .fontWeight(.semibold)
                            Spacer()
                        }.padding(.horizontal)
                            .frame(width: UIScreen.main.bounds.width)
                        HStack(spacing: 5) {
                            TransactionCardView()
                            TransactionCardView()
                        }
                        .padding(.bottom, 15)
                        Spacer()
                    }
                    Spacer()
                }.ignoresSafeArea(edges: .top)
            }
        }
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}

//
//  TransactionCardView.swift
//  Wallet Example
//
//  Created by Arthur Ford on 10/5/21.
//

import SwiftUI

struct TransactionCardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.offWhite)
                .shadow(color: .darkBlue, radius: 2, x: 2, y: 2)
                .frame(width: UIScreen.main.bounds.width / 2 - 40, height: UIScreen.main.bounds.width / 2 - 40)
            VStack {
                HStack(alignment: .center) {
                        Image("profile")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48)
                            .offset(x: 0, y: 5)
                            .clipShape(Circle())
                            .padding(4)
                        Image(systemName: "arrow.left")
                        .font(.subheadline)
                    VStack(alignment: .trailing) {
                        Text("500.00")
                            .font(.callout)
                            .fontWeight(.semibold)
                        Text("GBP")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                    }
                }
                Spacer()
                HStack {
                    Text("2 days left")
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                        .padding(.leading, 25)
                        .padding(.bottom, 25)
                    Spacer()
                }
                
            }
            
            .frame(width: UIScreen.main.bounds.width / 2 - 20, height: UIScreen.main.bounds.width / 2 - 20)
            
        }
        
    }
}

struct TransactionCardView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionCardView()
    }
}

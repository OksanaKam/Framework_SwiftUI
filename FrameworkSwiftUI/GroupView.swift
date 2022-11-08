//
//  GroupView.swift
//  FrameworkSwiftUI
//
//  Created by Оксана Каменчук on 08.11.2022.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            UserImage {
                Image("psycho")
            }
            .padding(15)
            
            Text("Психология")
                .font(.title3)
            
            Spacer()
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}

//
//  CircleImage.swift
//  FrameworkSwiftUI
//
//  Created by Оксана Каменчук on 08.11.2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("mummi")
            .resizable()
            .frame(width: 75, height: 75)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

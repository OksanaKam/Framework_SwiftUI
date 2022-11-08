//
//  UserView.swift
//  FrameworkSwiftUI
//
//  Created by Оксана Каменчук on 08.11.2022.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        UserProfileView()
    }
}

struct UserProfileView: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            UserImage {
                Image("mummi")
            }
            .padding(15)
            
            Text("Мумми Троль")
                .font(.title3)
             
            Spacer()
        }
    }
}

struct UserImage: View {
    var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
        }
    var body: some View {
        content
            .resizable()
            .frame(width: 75, height: 75)
            .clipShape(Circle())
            .modifier(CircleShadow( shadowColor: Color.blue, shadowRadius: 5))
    }
}

struct CircleShadow: ViewModifier {
    
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .background(Circle()
                .fill(Color.white)
                .shadow(color: shadowColor, radius: shadowRadius))
    }
}

extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

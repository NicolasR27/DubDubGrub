//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/5/24.
//

import SwiftUI

struct ProfileView: View {

    @State private var firstName = ""
    @State private var lastName = ""
    @State private var CompanyName = ""
    @State private var bio = ""

    var body: some View {
        VStack {
            ZStack {
                NameBackgroundView()

                HStack(spacing:16) {
                    ZStack{
                        AvatarView (size: 84)
                        EditImage()

                    }
                    .padding(.leading,12)

                    VStack {
                        TextField("First Name",text: $firstName)
                            .profileNameStyle()


                        TextField("Last Name",text: $lastName)
                            .profileNameStyle()

                        TextField("Company Name",text: $CompanyName)


                    }
                    .padding(.trailing,16)
                }
                .padding()

            }

            VStack(alignment:.leading,spacing: 8) {
                characterRemainView(currentCount: bio.count)

                TextEditor(text: $bio)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .overlay(RoundedRectangle(cornerRadius:8)
                        .stroke(Color.secondary,lineWidth: 1))

            }
            .padding(.horizontal, 20)

            Spacer()

            Button {

            }label: {
                DDGButton(title: "Create Profile")

            }
        }
        .navigationTitle("Profile")
    }
}

#Preview {
    NavigationView{
        ProfileView()
    }

}

struct NameBackgroundView: View {
    var body: some View {
        Color(.secondarySystemBackground)
            .frame(height:130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width:14,height: 14)
            .foregroundColor(.white)
            .offset(y:30)
    }
}

struct characterRemainView:View {

    var currentCount: Int

    var body:some View {

        Text("Bio: ")
            .font(.callout)
            .foregroundStyle(.secondary)
        +
        Text("\(100 - currentCount)")
            .font(.callout)
            .foregroundColor(currentCount<=100 ? .mint: Color(.systemPink))

        +
        Text("Characters Remains")
            .font(.callout)
            .foregroundStyle(.secondary)

    }
}




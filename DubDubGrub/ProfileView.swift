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
            ZStack{
                Color(.secondarySystemBackground)
                    .frame(height:130)
                    .cornerRadius(12)
                    .padding(.horizontal)
                HStack(spacing:16) {
                    ZStack{
                        AvatarView (size: 84)

                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width:14,height: 14)
                            .foregroundColor(.white)
                            .offset(y:30)

                    }
                    .padding(.leading,12)

                    VStack {
                        TextField("First Name",text: $firstName)
                            .font(.system(size: 32,weight:.bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)

                        TextField("Last Name",text: $lastName)
                            .font(.system(size: 32,weight:.bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)

                        TextField("Company Name",text: $CompanyName)


                    }
                    .padding(.trailing,16)
                }
                .padding()

            }

            VStack(alignment:.leading,spacing: 8) {
                Text("Bio: ")
                    .font(.callout)
                    .foregroundStyle(.secondary)
                +
                Text("\(100 - bio.count)")
                    .font(.callout)
                    .foregroundColor(bio.count<=100 ? .mint: Color(.systemPink))

                +
                Text("Characters Remains")
                    .font(.callout)
                    .foregroundStyle(.secondary)

                TextEditor(text: $bio)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .overlay(RoundedRectangle(cornerRadius:8)
                        .stroke(Color.secondary,lineWidth: 1))

            }
            .padding(.horizontal,20)

            Spacer()

            Button {

            }label: {
                Text("Create Profile")
                    .bold()
                    .frame(width:280,height:44)
                    .background(Color.mint)
                    .foregroundColor(.white)
                    .cornerRadius(8)

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

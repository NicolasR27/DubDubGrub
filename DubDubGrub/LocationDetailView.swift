//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Nicolas Rios on 6/5/24.
//

import SwiftUI

struct LocationDetailView: View {

    let colums = [GridItem(.flexible()),
                  GridItem(.flexible()),
                  GridItem(.flexible())]


    var body: some View {

            VStack(spacing: 16) {
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)

                HStack {
                    Label("123 Main Street",systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                       
                    Spacer()
                }
                .padding(.horizontal)

                Text("This is test description this is test description this is test description his is test description")
                    .lineLimit(3)
                    .minimumScaleFactor(7.5)
                    .frame(height:70)
                    .padding(.horizontal)

                ZStack {
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(.secondarySystemBackground))

                    HStack(spacing: 20) {
                        Button {

                        } label: {
                            LocationActionButton(color: .mint, imageName: "location.fill")


                        }

                            Link(destination: URL(string: "https://www.apple.com")!, label: {
                                LocationActionButton(color: .mint, imageName: "network")
                            })

                       
                        Button {

                        } label: {
                            LocationActionButton(color: .mint, imageName: "phone.fill")

                        }
                        Button {

                        } label: {
                            LocationActionButton(color: .mint, imageName: "person.fill.checkmark")

                        }
                    }
                }
                .padding(.horizontal)

                Text("Whos Here?")
                    .bold()
                    .font(.title2)
               
                ScrollView {
                    LazyVGrid(columns: colums,content : {
                        firstNameAvatarView(FistName: "SEAN")
                        firstNameAvatarView(FistName: "SEAN")
                        firstNameAvatarView(FistName: "SEAN")
                        firstNameAvatarView(FistName: "SEAN")
                        firstNameAvatarView(FistName: "SEAN")
                        firstNameAvatarView(FistName: "SEAN")

                    })
                }

              Spacer()

            }
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
    }


#Preview {
    NavigationView{
        LocationDetailView()

    }
    
}

struct LocationActionButton: View {
    var color: Color
    var imageName: String

    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60,height: 60)
           
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22,height: 22)
            
        }
    }
}

struct firstNameAvatarView: View{
   
    var FistName: String

    var body: some View{
        VStack {
            AvatarView(size: 64)
         
            Text(FistName)
                .bold()
                .lineLimit(1)
        }
    }
}

struct locationCell: View {

    var body: some View {

        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width:80,height: 80)
                .clipShape(Circle())
                .padding(.vertical,8)

            VStack(alignment:.leading) {
                Text("Test Location Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)

                HStack {
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)

                }

            }
            .padding(.leading)
        }
    }
}

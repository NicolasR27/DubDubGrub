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
                BannerImageView(imageName: "default-banner-asset")

                HStack {
                    AddressView(address:"123 Main Street")

                    Spacer()
                }
                .padding(.horizontal)

                DescriptionView(text:"This is test description this is test description this is test description his is test description")

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



struct BannerImageView: View {
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {

    var address: String

    var body: some View {
        Label(address,systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
   
    var text: String

    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(7.5)
            .frame(height:70)
            .padding(.horizontal)
    }
}
